#!/usr/bin/env python
"""
Python script to run MSConvert on all files in a directory.

@author: Claire
"""

import os
import argparse

p = argparse.ArgumentParser()
p.add_argument('raw_data_dir', help='path to directory with raw data files')
p.add_argument('out_data_dir', help='path to directory with output mzML files')
p.add_argument('--filetype', help='raw data file suffix.'
    + '[default: %(default)s]', default='.RAW', type='str')
p.add_argument('--msconvert', help='path to MSConvert',
    default=r'C://Program Files/ProteoWizard/ProteoWizard 3.0.10922/msconvert.exe')

args = p.parse_args()

msconvert = args.msconvert

# All files in raw_data_dir and all subdirectories get processed, btw
raw_data_dir = args.raw_data_dir
out_data_dir = args.out_data_dir

raw_files = []
# Get all the files in the raw_data_dir
# Note: this might break if you have raw data in multiple subdirectories but maybe not.
for pathdir, dirnames, filenames in os.walk(raw_data_dir):
    for f in filenames:
        # Keep only raw data files
        if (f.endswith(args.filetype)
                or f.endswith(args.filetype.lower())
                or f.endswith(args.filetype.upper())):
            raw_files.append(os.path.join(pathdir, f))

# Prepare strings for passing to command line by replacing spaces with "\ "
raw_files = ['\ '.join(i.split(' ')) for i in raw_files]
out_data_dir = '\ '.join(out_data_dir.split(' '))
msconvert = '\ '.join(msconvert.split(' '))

for f in raw_files:
    print(f),
    # Run MSConvert with thresholding
    outfile = f.split('/')[-1].split('.')[0] + '.threshold1000.mzML'
    cmdstr = msconvert + ' --mzML --filter "peakPicking true 1-"  --filter "threshold absolute 1000 most-intense" -o '\
    + out_data_dir + ' --outfile ' + outfile + ' ' + f
    os.system(cmdstr)

    # Run without thresholding
    cmdstr = msconvert + ' --mzML --filter "peakPicking true 1-3"  --filter "msLevel 1-3" -o ' + out_data_dir + ' ' + f
    os.system(cmdstr)
    print(' .')
