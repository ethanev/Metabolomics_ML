######## Windows for vendor msconvert (.Wiff, .raw, .RAW, .d) and UCC (.PEG/chemstation .D) file conversion ############

# Day one I ran:
#	START /B msconvert_windows.bat > day_1_msconvert_out.txt

# this script makes dirs, downloads data, calls msconvert_ee.py, uploads data and deletes it for select studies
# One major note for it working is the following (for msconvert_ee.py to work):
# 	Script assumes that msconvert.exe is in the system path, for Administrator on Windows_ee instance it is
#	NOTE IT REQUIRES THAT THE PATH TO THE DATA NOT HAVE ANY SPACES!!!!

# Consequently, I found after running it several studies had spaces / were chemstation .D files
# Thus manually altered directory names to not have spaces and reran

# Day 2:
# Needed to convert .PEG files, cant do with msconvert, used ucc.exe from UniChrom and wrote a python script to crawl a directory / batch script to run on all .PEG containing studies
# ran:
#	.\convert_peg.bat 
# This calls PEG_to_CDF.py on all the necessary studies

# Download select data files to manually change dir path name. and run conversion on directories I forgot in the last script, those that failed (due to spaces) or one chemstation dataset...
# 	.\dl_ST46_MTBLS352 
# Run to convert files 	
# 	.\day_2_msconvert_cleanup.bat > day_2_msconvert_cleanup.txt
# Inside this script it also calls a chemstation_D_to_CDF.py on one study with .D files
# The rest is .\msconvert_ee.py .\study#