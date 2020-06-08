#!/usr/bin/env Rscript
# Author: Ethan D. Evans, 2018 [eevans@mit.edu]

library(optparse)

option_list = list(
	make_option(c('-f', '--fnames'), default='', type='character',
		help='name of the file containing path to data with data name'),
	make_option(c('-w', '--whichFile'), default=1, type='integer',
		help='which file do you want to run IPO on?'),
	make_option(c('--isotope'), default='IPO', type='character',
		help='use "CAMERA" for mzData, otherwise dont alter!')
)
args = parse_args(OptionParser(option_list=option_list), args=commandArgs(TRUE))

## make the out files where the data gets saved for later processing with the main script
IPO <- 'IPO_'
num <- format(args$whichFile)
out <- '.out'	
f <- file(paste(IPO,num,out, sep="", collapse=""), open='at')
sink(f, append=TRUE, type='message')
library(IPO)

mz <- read.csv(args$fnames, stringsAsFactor=FALSE)$fnames
# hard code some values
peakpickingParameters <- getDefaultXcmsSetStartingParams('centWave')
peakpickingParameters$integrate <- 2
peakpickingParameters$prefilter <- 3
peakpickingParameters$value_of_prefilter <- 500
peakpickingParameters$fitgauss <- FALSE
peakpickingParameters$verbose.columns <- TRUE
peakpickingParameters$noise <- 500	
resultPeakpicking <- optimizeXcmsSet(files = mz[args$whichFile], params = peakpickingParameters, isotopeIdentification=args$isotope, nSlaves = 2, subdir = NULL, plot = FALSE)

# randomly choose 5 (might want to tune) files to run the RetGroup optimization on with the optimized centwave params
optParams <- resultPeakpicking$best_settings$parameters
optimizedXcmsSetObject <- calculateXcmsSet(mz[c(sample(1:length(mz),5))],optParams)
retcorGroupParameters <- getDefaultRetGroupStartingParams()
retcorGroupParameters$minfrac <- 0.05
resultRetcorGroup <- optimizeRetGroup(xset = optimizedXcmsSetObject, params = retcorGroupParameters, nSlaves = 1, subdir = NULL, plot = FALSE)
writeRScript(resultPeakpicking$best_settings$parameters, resultRetcorGroup$best_settings)

sink()


