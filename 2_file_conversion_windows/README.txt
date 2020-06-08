######## Windows for vendor msconvert (.Wiff, .raw, .RAW, .d) and UCC (.PEG/chemstation .D) file conversion ############

msconvert_windows.bat 

# this script makes dirs, downloads data, calls msconvert_ee.py, uploads data and deletes it for select studies
# One major note for it working is the following (for msconvert_ee.py to work):
# 	Script assumes that msconvert.exe is in the system path, for Administrator on Windows_ee instance it is
#	NOTE IT REQUIRES THAT THE PATH TO THE DATA NOT HAVE ANY SPACES or be a chemstation .D file

# convert .PEG files, cant do with msconvert, used ucc.exe from UniChrom and wrote a python script to crawl a directory / batch script to run on all .PEG containing studies

convert_peg.bat 
# This calls PEG_to_CDF.py on all the necessary studies

 .\msconvert_ee.py .\study#
