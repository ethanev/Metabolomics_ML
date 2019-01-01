import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('data_dir', help="path to directory with files you want to rename")
parser.add_argument('--os', default="w", help="windows or lunix? Use w for windows, l for linux, sorry no mac =/")
args = parser.parse_args()
# data location path
path = args.data_dir
# determine which os command to use
os_type = args.os
os_rename_command = 'ren' if os_type == 'w' else 'mv'
delimiter_type = '\\' if os_type == 'w' else '/'

for directory, sub_dir_list, file_list in os.walk(path):
	for file in file_list:
		if file.endswith('.cdf'):
			# print(directory.split(delimiter_type)[-1])
			dir_name = directory.split(delimiter_type)[-1]
			cmd = os_rename_command + ' ' + directory + delimiter_type + file + ' ' + dir_name[:-2] + '.cdf'
			# print(cmd)
			os.system(cmd)

