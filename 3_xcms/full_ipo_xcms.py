#!/usr/bin/env python
# Author: Ethan D. Evans, 2019 [eevans@mit.edu]

### This program is generally made to work with multiple inputs and not the those from say the longitudinal waste water analysis or the ML + metabolomics analysis
### Thus this above line can generally be ignored!

# Requirements:
# 1) the file with path/to/data.[cdf,mzData,mzML,mzXML] be in the directory WITH the data (ie the 'data_file' in the batch command line)
# 2) that full_ipo_xcms.py, cdf_to_mzData.R and extract_features_xcms3.R are in the same folder 

# General comment:
#	probably best to have all data of one type / run in its own directory so that the IPO*.out files don't overwrite each other if running
#	multiple of this script at once
# IMPORTANT: if using the cdf to mzData conversion, make sure you use CASE SENSITIVE INPUT 'cdf' is different from 'CDF'

# To run, follow README instructions though you may use command lines like (example is from the ML + metabolomics paper):
# python full_ipo_xcms.py --data_type 'mzML' --in_path='/home/ubuntu/data/downloading_data/MTBLS315/data/n_mzML' --data_file='n_mzML.txt' --acq_mode='positive' --csv_out='IPO_aligned_MTBLS315_n_mzML.csv' --out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/n_mzML' --log_file='MTBLS315_n_mzML.log' &
# or as an examples of using prerun IPO files: 
# python full_ipo_xcms.py --data_type 'mzML' --ipo_files='IPO_35.out IPO_70.out IPO_78.out' --in_path='/home/ubuntu/data/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/LC_Data' --data_file='lc_pos_mzML.txt' --acq_mode='positive' --csv_out='IPO_aligned_LC_ST000388.csv' --out_path='/home/ubuntu/data/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/LC_Data' --log_file='ST000388_xcms_3IPO_LC.log' &

import argparse, os, sys
import random
import pandas as pd
from multiprocessing import Pool
from shutil import copyfile
import logging

def convert_cdf_to_mzdata(path_in, file_data_names, cdf_type):
	# copy the R script to the working dir
	main_path = os.getcwd()
	new_file = os.path.join(path_in, 'cdf_to_mzData.R')
	copyfile('./cdf_to_mzData.R', new_file)
	# change directories to where the cdf files are located
	os.chdir(path_in)
	# this next step assumes the file with the data labels and path is in the dir with the cdf files
	copyfile(file_data_names, 'cdf_to_mzData.txt')
	# run the R script on the file with the data names
	cdf_conv_cmd = ['nohup Rscript cdf_to_mzData.R --type .' + cdf_type + ' > cdf_to_mzData.out']
	p = Pool(processes=1)
	p.map(os.system, cdf_conv_cmd)
	# make a new file with data name with .mzData
	write_data_file_names('./cdf_to_mzData.txt')
	new_data_file_names = 'mzData_from_cdf.txt'
	# change back to the main directory
	os.chdir(main_path)
	return new_data_file_names

def write_data_file_names(cdf_names_file):
	# make the new file that has the path+data 
	# Only to be used when coverting from cdf to mzData
	mzdata_file = open('mzData_from_cdf.txt', 'w')
	with open(cdf_names_file) as f:
		for line in f:
			line = line.strip()
			if line[-3:] == 'cdf' or line[-3:] == 'CDF':
				line = line[:-3] + 'mzData'
			mzdata_file.write(line + '\n')
	mzdata_file.close()

def run_IPO(path_in, file_data_names, file_type, ipo_runs=3):
	# copy the R script to the new working dir
	main_path = os.getcwd()
	new_file = os.path.join(path_in, 'IPO_param_picking.R')
	copyfile('./IPO_param_picking.R', new_file)
	os.chdir(path_in)
	# read the data file just to get the number of files
	file_data = pd.read_csv(file_data_names)
	# make sure that you have more or equal number of data file to number of IPO runs you want to do
	assert ipo_runs <= len(file_data), 'Cannot have more IPO runs than files, lower ipo_runs param (default=3)'
	# randomly determine the files to run IPO on
	file_numbers = random.sample(range(1,len(file_data)+1), ipo_runs)
	# run IPO with multiprocessing
	ipo_files = [] # to be used in the IPO param scraping section next
	ipo_cmds = [] # the actual command to be called, mapped to worker processes
	for num in file_numbers:
		out_file = 'IPO_'+str(num)+'.out'
		ipo_files.append(out_file)
		if file_type.lower() == 'cdf' or file_type == 'mzData':
			ipo_cmds.append('Rscript IPO_param_picking.R --fnames '+file_data_names+' --whichFile '+str(num)+' --isotope CAMERA' + ' > '+out_file)
		else:
			ipo_cmds.append('Rscript IPO_param_picking.R --fnames '+file_data_names+' --whichFile '+str(num) + ' > '+out_file)
	# start desired number of processes, equalt to number of IPO runs if this number < 16
	logging.info(ipo_cmds)
	# This can be an issues if you run multiple this script at once, use serial runs if 12 processes...you run out of cores fast 
	if len(file_numbers) < 12:
		processes = len(file_numbers)
	else:
		processes = 12
	# Spawn working pool
	p = Pool(processes)
	# run the commands in parellel
	p.map(os.system, ipo_cmds)
	# return to the original working directory
	os.chdir(main_path)
	return ipo_files

def read_IPO_file(file):
	params = {}
	with open(file) as f:
		start_params = False
		for line in f:
			line = line.strip().split()
			if len(line) > 0:
				if line[0] == 'xset':
					start_params = True
			if not start_params:
				continue
			try:
				if line[0] == 'bw':
					params['bw'] = float(line[2][:-1])
				elif line[0] == 'peakwidth':
					params['peakMin'] = float(line[2][2:-1])
					params['peakMax'] = float(line[3][:-2])
				elif line[0] == 'ppm':
					params['ppm'] = float(line[2][:-1])
				elif line[0] == 'noise':
					params['noise'] = float(line[2][:-1])
				elif line[0] == 'snthresh':
					params['snthresh'] = float(line[2][:-1])
				elif line[0] == 'mzdiff':
					params['mzdiff'] = float(line[2][:-1])
				elif line[0] == 'prefilter':
					params['filterMin'] = float(line[2][2:-1])
					params['filterMax'] = float(line[3][:-2])
				elif line[0] == 'integrate':
					params['integrate'] = float(line[2][:-1])
				elif line[0] == 'profStep':
					params['binSizeObi'] = float(line[2][:-1])
				elif line[0] == 'gapInit':
					params['gapInit'] = float(line[2][:-1])	
				elif line[0] == 'gapExtend':
					params['gapExtend'] = float(line[2][:-1])
				elif line[0] == 'mzwid':
					params['binSizeDensity'] = float(line[2][:-1])
				elif line[0] == 'minfrac':
					params['minfrac'] = float(line[2][:-1])
				elif line[0] == 'minsamp':
					params['minsamp'] = float(line[2][:-1])
			except:
				pass
	return params

def merge_dicts(combined_d, single_2):
	if 'file_count' in combined_d:
		combined_d['file_count'] += 1
	else:
		combined_d['file_count'] = 2
	for ele in single_2:
		combined_d[ele] += single_2[ele]
	return combined_d

def avg_dict(combined_d):
	# these first two lines catch it if say only one IPO run succeeds and merge_dicts was never run
	# 	thus 'file_count' would never have been created
	if 'file_count' not in combined_d:
		return combined_d
	else:
		for ele in combined_d:
			if type(combined_d[ele]) != 'string':
				combined_d[ele] = combined_d[ele]/combined_d['file_count']
	return combined_d

def run_IPO_based_xcms(prms, file_data_names, path_in, path_out, csv_out, acq_mode):
	'''
	Input: 
		prms - dictionary of parameters that comes from the IPO file parsing
		file_names - name of the file listing the data 'mzXML.txt' for example
		in_path - path to where the data and the data name file is
		path_out - path to where you want the data to be written
		csv_out - name you wish the output csv to have
		acq_mode - MS mode data was collected in, either: ['positive','negative']
	Output:
		Runs the xcms experiment with the given parameters. Ie you get feature table csv files.

	Note: requires the file listing the data to be in the same directory as the data itself
	'''
	# Write the Rscript string:
	data_name_file = os.path.join(path_in, file_data_names)
	out_csv_file = os.path.join(path_out, csv_out)
	assert 'extract_features_xcms3.R' in os.listdir('./'), \
	  'make sure the "extract_features_xcms3.R" is in the same directory as this script'
	# Make the command to run the xcms script

	cmd = "Rscript ./extract_features_xcms3.R --fnames '"+data_name_file+"' --ppm "+str(prms['ppm'])+" --mode '"+\
	acq_mode+"' --peakMin "+str(prms['peakMin'])+" --peakMax "+str(prms['peakMax'])+" --mzdiff "+str(prms['mzdiff'])+\
	" --binSizeObi "+str(prms['binSizeObi'])+ " --gapInit "+str(prms['gapInit'])+ " --gapExtend "+str(prms['gapExtend'])+ \
	" --bw "+str(prms['bw'])+" --minFrac "+str(prms['minfrac'])+" --binSizeDensity "+str(prms['binSizeDensity'])+" --alignedFile '"+ \
	out_csv_file+"' > '"+ data_name_file[:-4]+"_feat_extraction.out'"
	logging.info(cmd)
	# Run the xcms script
	os.system(cmd)

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('--data_type', help='is the data a: cdf, mzData, mzML or mzXML?')
	parser.add_argument('--ipo_files', help='list the input files', default=' ')
	parser.add_argument('--in_path', help='path to the directory with IPO files, data and file with data names/paths')
	parser.add_argument('--data_file', help='the name of the file that list the data names with path')
	parser.add_argument('--acq_mode', help='mode the mass spec was run in: positive or negative?')
	parser.add_argument('--csv_out', help='file name you want for the csv output', default='IPO_aligned_files.csv')
	parser.add_argument('--out_path', help='path to directory for outputting', default='./')
	parser.add_argument('--log_file', help='path and name to log file', default='')
	args = parser.parse_args()
	log_file = args.log_file
	data_type = args.data_type
	ipo_files = args.ipo_files.split()
	path_in = args.in_path
	file_data_names = args.data_file
	path_out = args.out_path
	csv_out = args.csv_out
	acq_mode = args.acq_mode

	if log_file != '':
		log_file = os.path.join(path_out, log_file)	
		logging.basicConfig(filename=log_file, level='DEBUG')
	else: 
		log_file = os.path.join(path_out, file_data_names[:-4]+'_main.log')
		logging.basicConfig(filename=log_file, level='DEBUG')
	# perform CDF to mzData conversion if required 
	if data_type == 'cdf' or data_type == 'CDF':
		logging.info('++++++ Need to convert cdf data to mzData ++++++')
		file_data_names = convert_cdf_to_mzdata(path_in, file_data_names, data_type)
		data_type = 'mzData'
		logging.info('++++++ Done with cdf to mzData conversion ++++++')
	else:
		logging.info('++++++ Data type does not need conversion ++++++')

	# if no ipo files are given, this means it needs to be run first
	if len(ipo_files) == 0:
		logging.info('++++++ No IPO out files given, Running IPO ++++++')
		ipo_files = run_IPO(path_in, file_data_names, data_type, ipo_runs=3)
	else:
		logging.info('++++++ IPO files supplied, moving to param averaging ++++++')

	# Read all the IPO output files
	logging.info('++++++ Getting xcms parameters ++++++')
	start = True
	for file in ipo_files:
		file = os.path.join(path_in,file)
		new_params_d = read_IPO_file(file)
		if len(new_params_d) == 0:
			logging.info('One of the IPO files was not complete! ', str(file))
			continue
		logging.info('params: '+str(new_params_d))
		if start == True:
			summed_d = new_params_d
			start = False
			continue
		if len(ipo_files) > 1:
			summed_d = merge_dicts(summed_d, new_params_d)
	# Get the averaged parameters if more than one IPO run was used
	if start == False:
		if len(ipo_files) > 1:
			params = avg_dict(summed_d)
		else:
			params = summed_d
	else:
		logging.info('No params created due to no IPO runs finishing, debug and rerun')
		sys.exit(1)
	logging.info('++++++ XCMS params ++++++')
	logging.info(str(params))
	if len(params) == 0:
		logging.info('All IPO runs failed, run again or debug. Stopping run')
		sys.exit(1)
	# Launch a xcms3 run using the scrapped params
	logging.info('++++++ Starting xcms run ++++++')
	run_IPO_based_xcms(params, file_data_names, path_in, path_out, csv_out, acq_mode)
	logging.info('++++++ Completed xcms run ++++++')

if __name__ == "__main__":
	main()

	
