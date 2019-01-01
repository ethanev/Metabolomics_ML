#!/usr/bin/env Rscript
# Author: Ethan D. Evans, 2018 [eevans@mit.edu]
# Code influenced by / borrowed from Claire Duvallet / Krista Longnecker

# Requires that data is in either: mzML, mzXML or mzData format. 

library(xcms)
library(CAMERA)
library(optparse)

# to get the file with the file names:
#   echo 'fnames' > datafiles.txt
#   ls -d $PWD/*_N.mzML >> datafiles.txt
# *_N.mzML = file name pattern 
# then pass 'datafiles.txt' as the input to -f below

#parse options for centWave and for obiwarp
option_list = list(
	make_option(c('-f', '--fnames'), default='', type='character',
		help='path to file containing the full paths to all data files'),
	make_option(c('-p', '--ppm'), default=3.0, type='double',
		help='ppm value for centWaveParam'),
	make_option(c('-s', '--snthresh'), default=10, type='integer',
        help='signal to noise threshold for use in xcmsSet'),
    make_option(c('-i', '--integrate'), default=2, type='integer',
        help='value for integrate parameter in xcmsSet'),
    make_option(c('--mode'), default='', type='character',
        help='mode of MS: positive or negative'),
    make_option(c('--filterMin'), default=3, type='integer',
        help='pre-filter min value'),
    make_option(c('--filterMax'), default=5, type='integer',
        help='pre-filter max value'),
     make_option(c('--peakMin'), default=20.0, type='double',
        help='peakWidth min value'),
    make_option(c('--peakMax'), default=60.0, type='double',
        help='peakWidth max value'),
    make_option(c('--mzdiff'), default=0.0045, type='double',
        help='mzDiff value'),
    make_option(c('-n', '--noise'), default=5, type='integer',
        help='noise value for xcmsSet'),
	make_option(c('--binSizeObi'), default=0.9, type='double',
        help='binSize for mass spec data'),
	make_option(c('--gapInit'), default=0.68, type='double',
        help='penalty for making a gap in RT correction'),
    make_option(c('--gapExtend'), default=2.0, type='double',
        help='penalty for extending a gap in the RT correction'),
    make_option(c('--bw'), default=1.0, type='double',
        help='bw param for peakDensityParam'),
    make_option(c('--minFrac'), default=0.3, type='double',
        help='fraction of samples with peak for peakDensityParam'),
    make_option(c('--binSizeDensity'), default=0.001, type='double',
        help='fraction of samples with peak for peakDensityParam'),
    make_option(c('--alignedFile'), default='', type='character',
    	help='the file name to save the output features')
)

args = parse_args(OptionParser(option_list=option_list), args=commandArgs(TRUE))
#read in file name data:
mzfiles <- read.csv(args$fnames, stringsAsFactor=FALSE)$fnames
#MAKE IT SO R USES 3 CORE TO AVOID MEMORY CRASHING FOR THE NEXT STEP - TUNE BASED ON YOUR MACHINE!
default <- registered()
register(MulticoreParam(workers = 1, timeout = 10000000), default = TRUE)
#make the XCMSnExp object - this is the main data container.
data_raw <- readMSData(mzfiles, mode="onDisk")
data_raw <- filterMsLevel(data_raw,msLevel=1)
#find the chrom peaks:
cwfp <- CentWaveParam(snthresh=args$snthresh, ppm=args$ppm, peakwidth=c(args$peakMin,args$peakMax), 
	prefilter=c(args$filterMin,args$filterMax), mzCenterFun='wMean', integrate=args$integrate, 
	mzdiff=args$mzdiff, fitgaus=FALSE, noise=args$noise, verboseColumns=TRUE)
print('parameters for centwave: ')
print(cwfp)
data <- findChromPeaks(data_raw, param = cwfp)

# test <- xcmsSet('GC-TOFMS_09.mzData', method="centWave", ppm=25 ,snthresh=10, prefilter =  c(3, 150), mzCenterFun="wMean",integrate=2, verbose.columns=TRUE, peakwidth=c(5,45), fitgauss=TRUE, noise=150, mzdiff=-0.005, nSlaves=1, sleep=0.00001)

#MAKE IT SO R USES 1 CORE TO AVOID parallel issues FOR THE NEXT STEP - TUNE BASED ON YOUR MACHINE!
default <- registered()
register(MulticoreParam(workers = 1, timeout = 10000000), default = TRUE)
# perform the RT correction
print('parameters for obiwarp: ')
#### NOTE: FOR SEVERE BATCH EFFECTS TRY peakGroups INSTEAD! and use LOESS (Commonly used to help with batches)
print(ObiwarpParam(binSize=args$binSizeObi, distFun="cor_opt", gapInit=args$gapInit, gapExtend=args$gapExtend))
data <- adjustRtime(data, param = ObiwarpParam(binSize=args$binSizeObi, distFun="cor_opt", gapInit=args$gapInit, gapExtend=args$gapExtend))

# If you ever need to filter the files based on class (e.g. cancer vs noncancer)
# use:
#    files = read.delim('filtering_files.txt', stringsAsFactor=FASLSE)$fnames
#    arb_split <- filterFile(XCMSnExp, files)
# Where filtering_files.txt is in the form of (ie the files you want to keep):
#    fnames
#    file_name.mzML (or .mzXML or .mzData)
#    ...
#    ...

# group chrom peaks with density method
# alter the sample group in order to get the batches mapped to the files (pass in a diff file with these)
density <- PeakDensityParam(sampleGroups=rep(1, length(fileNames(data))), bw=args$bw, 
	minFraction=args$minFrac, minSamples=1, binSize=args$binSizeDensity, maxFeatures=50)
print('parameters for density:')
print(density)
data <- groupChromPeaks(data, param = density)
# Access the mz-rt features with the featureDefinitions method:
#    featureDefinitions(data)

# Fill in peaks
fcpp <- FillChromPeaksParam()
# fcpp <- FillChromPeaksParam(expandMz = 1, expandRt = 1)
filled <- fillChromPeaks(data, param = fcpp)
print('fill chrom peak params: ')
print(fcpp)

# CAMERA portion of the script - for isotope / adduct calling and MS-slice grouping
# xgF <- fillChromPeaks(data, param = fcpp, return.type = "xcmsSet")
print('starting conversion to xcmsSet')
# filled <- filterMsLevel(filled,msLevel=1)
xgF <- as(filled, "xcmsSet")
print('conversion complete')


# The rest is from C.D. and K.L.
# xgF <- fillPeaks(xgF) # not sure what this does since we just filled...

## Write current allpeaks and aligned_peaks files - currently just the aligned peaks
# write.csv(xgF@peaks, file='./allpeaksfile_N_mzML.csv')
write.csv(peakTable(xgF), file=args$alignedFile)
print('wrote to first csv')
## Now do CAMERA -
xsa = xsAnnotate(xgF)
print('finished annotation')

#group the features initially just by retention time
xsaF = groupFWHM(xsa)
print('finished group FWHM')

#figure out which features also have a matching 13C feature. Have to enter both the relative error (ppm) and the absolute error (mzabs)
nSamples = length(xgF@filepaths)
print('got length, starting isotope finding')
xsaFI = findIsotopes(xsaF, ppm=5, mzabs = 0.005, minfrac = 1/nSamples)
print('found isotopes')

#now group by the correlations based on (1) intensity, (2) EIC, (3) isotopes...
xsaC = groupCorr(xsaFI, cor_eic_th=0.75, pval=0.05, graphMethod="hcs",
                 calcIso=TRUE, calcCiS=TRUE, calcCaS=FALSE)
print('finished group corr!')
#setup the file to also look for adducts, only go with the primary adducts for the moment
mode = args$mode
if (mode == 'negative'){
  file = system.file("rules/primary_adducts_neg.csv", package="CAMERA")
} else if (mode == 'positive'){
  file = system.file('rules/primary_adducts_pos.csv', package='CAMERA')
}
rules = read.csv(file)
an = findAdducts(xsaC, polarity=mode, rules=rules, ppm=5)
print('found adducts')
rm(xsa,xsaF,xsaFI,xsaC)
## Write final file outputs
write.csv(getPeaklist(an), file=args$alignedFile)
