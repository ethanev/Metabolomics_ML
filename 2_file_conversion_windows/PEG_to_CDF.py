import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('PEG_data_dir', help='path to directory with .PEG files')
# parser.add_argument('CDF_out_dir', help='path to directory to place the converted CDF files in')
args = parser.parse_args()

#where is the unichrom .exe located
converter_path = 'C:\\UniChrom\\ucc.exe'

#path to data and where it will go
in_path = args.PEG_data_dir
# out_path = args.CDF_out_dir

# make sure output path will be valid and uniform despite input
# if out_path[-1] == '\\': 
# 	pass
# else:
# 	out_path += '\\'

# walk directories, find peg files and convert all 
for directory, sub_dir_list, file_list in os.walk(in_path):
	for file in file_list:
		if file[-3:] == 'peg' or file[-3:] == 'PEG':
			cmd = converter_path + ' "' + directory + '\\' + file + '" "' + directory +'\\' + file[:-3] + 'cdf"'
			# print(cmd)
			os.system(cmd)


################# GENERAL USAGE #################
# mkdir ST000368
# cd ST000368
# aws s3 sync s3://almlab.bucket/revo_healthcare/ST000368 ./
# cd ..
# python PEG_to_CDF.py .\ST000368
# aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000368





