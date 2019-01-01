import argparse
import os

# To run, use command line like:
#   python scraping_IPO_params.py --in_files='XYZ_3.out XYZ_4.out XYZ_10.out' --in_path='/home/ubuntu/data/downloading_data/MTBLS315/data' --data_file='mzXML.txt' --acq_mode='positive' --csv_out='IPO_aligned_mzXML_P.csv' --out_path='/home/ubuntu/data/downloading_data/MTBLS315/data' 
# A real example:
#  python scraping_IPO_params.py --in_files='IPO_mzData_3.out IPO_mzData_5.out IPO_mzData.out' --in_path='/home/ubuntu/data/downloading_data/MTBLS315/data' --data_file='mzData.txt' --acq_mode='positive' --csv_out='IPO_aligned_mzData_P.csv' --out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/mzData_test'

def read_IPO_file(file):
	params = {}
	with open(file) as f:
		for line in f:
			line = line.strip().split()
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
	for ele in combined_d:
		if type(combined_d[ele] ) != 'string':
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
	" --bw "+str(prms['bw'])+" --minFrac "+str(prms['minfrac'])+" --binSizeDensity "+str(prms['binSizeDensity'])+" --alignedFile '"+out_csv_file+"'"
	# Run the xcms script
	os.system(cmd)

def main():
	parser = argparse.ArgumentParser()
	parser.add_argument('--in_files', help='list the input files')
	parser.add_argument('--in_path', help='path to the directory with IPO files, data and file with data names/paths')
	parser.add_argument('--data_file', help='the name of the file that list the data names with path')
	parser.add_argument('--acq_mode', help='mode the mass spec was run in: positive or negative?')
	parser.add_argument('--csv_out', help='file name you want for the csv output', default='IPO_aligned_files.csv')
	parser.add_argument('--out_path', help='path to directory for outputting', default='./')
	args = parser.parse_args()
	input_files = args.in_files.split()
	path_in = args.in_path
	file_data_names = args.data_file
	path_out = args.out_path
	csv_out = args.csv_out
	acq_mode = args.acq_mode

	# Read all the IPO output files
	start = True
	for file in input_files:
		file = os.path.join(path_in,file)
		new_params_d = read_IPO_file(file)
		if start == True:
			summed_d = new_params_d
			start = False
			continue
		if len(input_files) > 1:
			summed_d = merge_dicts(summed_d, new_params_d)
	# Get the averaged parameters if more than one IPO run was used
	if len(input_files) > 1:
		params = avg_dict(summed_d)
	else:
		params = summed_d

	# Launch a xcms3 run using the scrapped params
	run_IPO_based_xcms(params, file_data_names, path_in, path_out, csv_out, acq_mode)

if __name__ == "__main__":
	main()

	