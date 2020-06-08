#!/bin/bash

mkdir MTBLS315
cd MTBLS315
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS315/"
cd ..

mkdir MTBLS92
cd MTBLS92
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS92/"
cd ..

mkdir MTBLS352
cd MTBLS352
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS352/"
cd ..

mkdir MTBLS354
cd MTBLS354
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS354/"
cd ..

mkdir MTBLS28
cd MTBLS28
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS28/"
cd ..

mkdir MTBLS279
cd MTBLS279
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS279/"
cd ..

mkdir MTBLS280
cd MTBLS280
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS280/"
cd ..

mkdir MTBLS253
cd MTBLS253
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS253/"
cd ..

mkdir MTBLS72
cd MTBLS72
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS72/"
cd ..

mkdir MTBLS105
cd MTBLS105
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS105/"
cd ..

mkdir MTBLS264
cd MTBLS264
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS264/"
cd ..

mkdir MTBLS266
cd MTBLS266
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS266/"
cd ..

mkdir MTBLS358
cd MTBLS358
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS358/"
cd ..

mkdir MTBLS364
cd MTBLS364
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS364/"
cd ..


mkdir MTBLS408
cd MTBLS408
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS408/"
cd ..

mkdir MTBLS579
cd MTBLS579
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS579/"
cd ..

mkdir ST000388
cd ST000388
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000388.zip"
unzip ST000388.zip
wget -OAN000624.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000624/mwtab/txt
cd ..

mkdir ST000389
cd ST000389
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000389.zip"
unzip ST000389.zip
wget -OAN000625.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000625/mwtab/txt
cd ..

mkdir ST000608
cd ST000608
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000608.zip"
unzip ST000608.zip
wget -OAN000929.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000929/mwtab/txt
wget -OAN000930.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000930/mwtab/txt
wget -OAN000931.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000931/mwtab/txt
cd ..

mkdir ST000381
cd ST000381
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000381.zip"
unzip ST000381.zip
wget -OAN000615.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000615/mwtab/txt
cd ..

mkdir ST000392
cd ST000392
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000392.zip"
unzip ST000392.zip
wget -OAN000628.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000628/mwtab/txt
cd ..

mkdir ST000383
cd ST000383
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000383.zip"
unzip ST000383.zip
wget -OAN000618.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000618/mwtab/txt
cd ..

mkdir ST000284
cd ST000284
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000284.zip"
unzip ST000284.zip
wget -OAN000452.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000452/mwtab/txt
cd ..

mkdir ST000368
cd ST000368
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000368.zip"
unzip ST000368.zip
wget -OAN000602.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000602/mwtab/txt
cd ..

mkdir ST000369
cd ST000369
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000369.zip"
unzip ST000369.zip
wget -OAN000603.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000603/mwtab/txt
cd ..

mkdir ST000385
cd ST000385
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000385.zip"
unzip ST000385.zip
wget -OAN000620.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000620/mwtab/txt
cd ..

mkdir ST000386
cd ST000386
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000386.zip"
unzip ST000386.zip
wget -OAN000621.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000621/mwtab/txt
cd ..

mkdir ST000062
cd ST000062
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000062.zip"
unzip ST000062.zip
wget -OAN000100.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000100/mwtab/txt
cd ..

mkdir ST000063
cd ST000063
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000063.zip"
unzip ST000063.zip
wget -OAN000101.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000101/mwtab/txt
cd ..

mkdir ST000450
cd ST000450
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000450.zip"
unzip ST000450.zip
wget -OAN000705.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000705/mwtab/txt
wget -OAN000706.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000706/mwtab/txt
cd ..

mkdir ST000329
cd ST000329
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000329.zip"
unzip ST000329.zip
wget -OAN000525.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000525/mwtab/txt
wget -OAN000526.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000526/mwtab/txt
cd ..

mkdir ST000045
cd ST000045
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000045.7z"
mkdir raw
7z x ST000045.7z -o./raw
wget -OAN000072.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000072/mwtab/txt
wget -OAN000073.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000073/mwtab/txt
wget -OAN000074.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000074/mwtab/txt
wget -OAN000075.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000075/mwtab/txt
cd ..

mkdir ST000355
cd ST000355
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000355.zip"
unzip ST000355.zip
wget -OAN000580.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000580/mwtab/txt
wget -OAN000581.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000581/mwtab/txt
cd ..

mkdir ST000356
cd ST000356
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000356.zip"
unzip ST000356.zip
wget -OAN000582.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000582/mwtab/txt
wget -OAN000583.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000583/mwtab/txt
cd ..

mkdir ST000396
cd ST000396
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000396.7z"
mkdir raw
7z x ST000396.7z -o./raw
wget -OAN000633.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000633/mwtab/txt
cd ..

mkdir ST000865
cd ST000865
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000865.zip"
unzip ST000865.zip
wget -OAN001390.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001390/mwtab/txt
cd ..

mkdir MTBLS17
cd MTBLS17
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS17/"
cd ..

mkdir MTBLS19
cd MTBLS19
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS19/"
cd ..

mkdir ST000046
cd ST000046
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000046.7z"
mkdir raw
7z x ST000046.7z -o./raw
wget -OAN000076.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000076/mwtab/txt 
wget -OAN000077.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000077/mwtab/txt 
wget -OAN000078.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000078/mwtab/txt 
wget -OAN000079.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000079/mwtab/txt 
cd ..

mkdir ST000578
cd ST000578
mkdir raw
cd raw
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000578.zip"
unzip ST000578.zip
cd ..
wget -OAN000888.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000888/mwtab/txt 
wget -OAN000889.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000889/mwtab/txt 
cd ..

mkdir ST000763
cd ST000763
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000763.zip"
unzip ST000763.zip
wget -OAN001201.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001201/mwtab/txt 
wget -OAN001202.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001202/mwtab/txt 
wget -OAN001203.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001203/mwtab/txt 
wget -OAN001204.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001204/mwtab/txt 
cd ..


## Only author data for:
## ST000888 was from:
# https://www.metabolomicsworkbench.org/data/study_textformat_view.php?STUDY_ID=ST000888&ANALYSIS_ID=AN001450&MODE=d

## Only author data for:
## ST000918 was from:
# https://www.metabolomicsworkbench.org/data/study_textformat_list.php?STUDY_ID=ST000918&STUDY_TYPE=MS&RESULT_TYPE=5
