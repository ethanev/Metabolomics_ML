#!/usr/bin/env Rscript
# Author: Ethan D. Evans, 2018 [eevans@mit.edu]

# f <- file("cdf_to_mzData.out", open='wt')
# sink(f, append=TRUE, type='message')
library(optparse)
library(xcms)

option_list = list(
	make_option(c('--type'), default='.cdf', type='character',
		help='is it .CDF or .cdf, .cdf is default')
)

args = parse_args(OptionParser(option_list=option_list), args=commandArgs(TRUE))
print(args$type)
# the cdf_to_mzML.txt should have the following structure:
# fnames
# path/to/file_1.cdf
# path/to/file_2.cdf
# ...
# you can make it from:
#	echo 'fnames' > cdf_to_mzData.txt
#	ls -d $PWD/*.cdf >> cdf_to_mzData.txt

cdfs <- read.csv('cdf_to_mzData.txt', stringsAsFactors=FALSE)$fnames
print(cdfs)

for(file in cdfs){
	data_cdf <- xcmsRaw(file)
	new_file <- sub(pattern = args$type, replacement = '.mzData', basename(file))
	write.mzdata(data_cdf, new_file)
}
# sink()
# requires the file cdf_to_mzML.txt to have format of :
# fnames
# 429_1.cdf (or whatever the file is called)
# ...



