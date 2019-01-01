#!/bin/bash
# Example script for automated downloading of raw files -- these particular studies are the larger LC-MS ones with available raw data
# Requires LFTP -- allows multiple connections simultaneously, way faster

# basic workflow:
# - make study folder
# - download the raw data files using LFTP
# - unzip if applicable
# - put files into "raw" subfolder
# - download metadata files into study folder
# - push everything to S3
# - empty the raw subfolder

mkdir MTBLS315
cd MTBLS315
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS315/"
mv MTBLS315 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS315/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS92
cd MTBLS92
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS92/"
mv MTBLS92 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS92/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS20
cd MTBLS20
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS20/"
mv MTBLS20 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS20/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS28
cd MTBLS28
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS28/"
mv MTBLS28 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS28/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS279
cd MTBLS279
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS279/"
mv MTBLS279 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS279/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS280
cd MTBLS280
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS280/"
mv MTBLS280 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS280/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS253
cd MTBLS253
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS253/"
mv MTBLS253 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS253/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS404
cd MTBLS404
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS404/"
mv MTBLS404 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS404/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS148
cd MTBLS148
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS148/"
mv MTBLS148 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS148/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS72
cd MTBLS72
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS72/"
mv MTBLS72 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS72/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS191
cd MTBLS191
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS191/"
mv MTBLS191 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS191/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS105
cd MTBLS105
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS105/"
mv MTBLS105 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS105/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS218
cd MTBLS218
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS218/"
mv MTBLS218 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS218/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS264
cd MTBLS264
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS264/"
mv MTBLS264 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS264/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS266
cd MTBLS266
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS266/"
mv MTBLS266 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS266/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS200
cd MTBLS200
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS200/"
mv MTBLS200 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS200/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS358
cd MTBLS358
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS358/"
mv MTBLS358 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS358/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS364
cd MTBLS364
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS364/"
mv MTBLS364 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS364/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS146
cd MTBLS146
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS146/"
mv MTBLS146 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS146/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS427
cd MTBLS427
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS427/"
mv MTBLS427 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS427/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS408
cd MTBLS408
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS408/"
mv MTBLS408 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS408/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS423
cd MTBLS423
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS423/"
mv MTBLS423 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS423/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS579
cd MTBLS579
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS579/"
mv MTBLS579 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS579/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS656
cd MTBLS656
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS656/"
mv MTBLS656 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS656/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS665
cd MTBLS665
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS665/"
mv MTBLS665 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS665/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000388
cd ST000388
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000388.zip"
unzip ST000388.zip
mv ST000388 raw
rm ST000388.zip
wget -OAN000624.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000624/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000388/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000389
cd ST000389
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000389.zip"
unzip ST000389.zip
mv ST000389 raw
rm ST000389.zip
wget -OAN000625.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000625/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000389/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000608
cd ST000608
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000608.zip"
unzip ST000608.zip
mv ST000608 raw
rm ST000608.zip
wget -OAN000929.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000929/mwtab/txt
wget -OAN000930.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000930/mwtab/txt
wget -OAN000931.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000931/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000608/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000381
cd ST000381
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000381.zip"
unzip ST000381.zip
mv ST000381 raw
rm ST000381.zip
wget -OAN000615.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000615/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000381/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000382
cd ST000382
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000382.zip"
unzip ST000382.zip
mv ST000382 raw
rm ST000382.zip
wget -OAN000616.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000616/mwtab/txt
wget -OAN000617.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000617/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000382/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000392
cd ST000392
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000392.zip"
unzip ST000392.zip
mv ST000392 raw
rm ST000392.zip
wget -OAN000628.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000628/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000392/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000383
cd ST000383
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000383.zip"
unzip ST000383.zip
mv ST000383 raw
rm ST000383.zip
wget -OAN000618.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000618/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000383/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000405
cd ST000405
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000405.zip"
unzip ST000405.zip
mv ST000405 raw
rm ST000405.zip
wget -OAN000645.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000645/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000405/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000397
cd ST000397
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000397.7z"
mkdir raw
7z x ST000397.7z -o./raw
wget -OAN000634.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000634/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000397/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000284
cd ST000284
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000284.zip"
unzip ST000284.zip
mv ST000284 raw
rm ST000284.zip
wget -OAN000452.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000452/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000284/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000368
cd ST000368
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000368.zip"
unzip ST000368.zip
mv ST000368 raw
rm ST000368.zip
wget -OAN000602.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000602/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000368/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000369
cd ST000369
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000369.zip"
unzip ST000369.zip
mv ST000369 raw
rm ST000369.zip
wget -OAN000603.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000603/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000369/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000385
cd ST000385
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000385.zip"
unzip ST000385.zip
mv ST000385 raw
rm ST000385.zip
wget -OAN000620.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000620/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000385/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000386
cd ST000386
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000386.zip"
unzip ST000386.zip
mv ST000386 raw
rm ST000386.zip
wget -OAN000621.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000621/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000386/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000063
cd ST000063
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000063.zip"
unzip ST000063.zip
mv ST000063 raw
rm ST000063.zip
wget -OAN000101.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000101/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000063/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000450
cd ST000450
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000450.zip"
unzip ST000450.zip
mv ST000450 raw
rm ST000450.zip
wget -OAN000705.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000705/mwtab/txt
wget -OAN000706.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000706/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000450/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000329
cd ST000329
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000329.zip"
unzip ST000329.zip
mv ST000329 raw
rm ST000329.zip
wget -OAN000525.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000525/mwtab/txt
wget -OAN000526.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000526/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000329/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000091
cd ST000091
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000091.zip"
unzip ST000091.zip
mv ST000091 raw
rm ST000091.zip
wget -OAN000145.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000145/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000091/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000292
cd ST000292
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000292.zip"
unzip ST000292.zip
mv ST000292 raw
rm ST000292.zip
wget -OAN000466.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000466/mwtab/txt
wget -OAN000467.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000467/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000292/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000291
cd ST000291
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000291.zip"
unzip ST000291.zip
mv ST000291 raw
rm ST000291.zip
wget -OAN000464.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000464/mwtab/txt
wget -OAN000465.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000465/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000291/ --recursive
rm -rf ./raw/*
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
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000045/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000355
cd ST000355
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000355.zip"
unzip ST000355.zip
mv ST000355 raw
rm ST000355.zip
wget -OAN000580.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000580/mwtab/txt
wget -OAN000581.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000581/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000355/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000356
cd ST000356
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000356.zip"
unzip ST000356.zip
mv ST000356 raw
rm ST000356.zip
wget -OAN000582.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000582/mwtab/txt
wget -OAN000583.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000583/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000356/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000306
cd ST000306
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000306.zip"
unzip ST000306.zip
mv ST000306 raw
rm ST000306.zip
wget -OAN000485.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000485/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000306/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000396
cd ST000396
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000396.7z"
mkdir raw
7z x ST000396.7z -o./raw
wget -OAN000633.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000633/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000396/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000726
cd ST000726
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000726.zip"
unzip ST000726.zip
mv ST000726 raw
rm ST000726.zip
wget -OAN001138.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001138/mwtab/txt
wget -OAN001139.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001139/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000726/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000865
cd ST000865
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000865.zip"
unzip ST000865.zip
mv ST000865 raw
rm ST000865.zip
wget -OAN001390.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001390/mwtab/txt
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000865/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS90
cd MTBLS90
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS90/"
mv MTBLS90 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS90/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS93
cd MTBLS93
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS93/"
mv MTBLS93 raw
gunzip -c ./raw/*.gz # gunzip deletes original
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS93/ --recursive
rm -rf ./raw/*
cd ..
#I dont think the gunzip -c ./raw/*.gz actually worked
cd MTBLS93
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS93 ./
cd raw
gunzip *
cd ..
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS93

mkdir MTBLS124
cd MTBLS124
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS124/"
mv MTBLS124 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
gunzip -c ./raw/*.gz # gunzip deletes original
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS124/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS17
cd MTBLS17
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS17/"
mv MTBLS17 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS17/ --recursive
rm -rf ./raw/*
cd ..

mkdir MTBLS19
cd MTBLS19
lftp -c "mirror -c --use-pget-n=5 ftp://ftp.ebi.ac.uk/pub/databases/metabolights/studies/public/MTBLS19/"
mv MTBLS19 raw
cp ./raw/i_*.txt ./raw/s_*.txt ./raw/a_*.txt ./raw/m_*.tsv .
aws s3 cp . s3://almlab.bucket/revo_healthcare/MTBLS19/ --recursive
rm -rf ./raw/*
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
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000046/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000421
cd ST000421
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000421.zip"
unzip ST000421.zip
mv ST000421 raw
rm ST000421.zip
wget -OAN000663.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000663/mwtab/txt 
wget -OAN000664.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000664/mwtab/txt 
wget -OAN000665.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000665/mwtab/txt 
wget -OAN000666.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000666/mwtab/txt 
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000421/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000422
cd ST000422
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000422.zip"
unzip ST000422.zip
mv ST000422 raw
rm ST000422.zip
wget -OAN000667.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000667/mwtab/txt 
wget -OAN000668.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000668/mwtab/txt 
wget -OAN000669.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000669/mwtab/txt 
wget -OAN000670.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000670/mwtab/txt 
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000422/ --recursive
rm -rf ./raw/*
cd ..

# this has a bunch of nested zips
mkdir ST000578
cd ST000578
mkdir raw
cd raw
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000578.zip"
unzip ST000578.zip
rm ST000578.zip
cd ..
wget -OAN000888.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000888/mwtab/txt 
wget -OAN000889.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN000889/mwtab/txt 
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000578/ --recursive
rm -rf ./raw/*
cd ..

mkdir ST000763
cd ST000763
lftp -c "pget -n20 ftp://www.metabolomicsworkbench.org/Studies/ST000763.zip"
unzip ST000763.zip
rm ST000763.zip
mv ST000763 raw
wget -OAN001201.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001201/mwtab/txt 
wget -OAN001202.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001202/mwtab/txt 
wget -OAN001203.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001203/mwtab/txt 
wget -OAN001204.txt http://www.metabolomicsworkbench.org/rest/study/analysis_id/AN001204/mwtab/txt 
aws s3 cp . s3://almlab.bucket/revo_healthcare/ST000763/ --recursive
rm -rf ./raw/*
cd ..
