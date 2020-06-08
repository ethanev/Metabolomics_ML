python msconvert_ee.py .\ST000726
cd ST000726
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000726
cd ..

python msconvert_ee.py .\ST000046
cd ST000046
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000046
cd ..

python msconvert_ee.py .\MTBLS352
cd MTBLS352
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS352
cd ..

mkdir ST000388
cd ST000388
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000388 ./
cd ..
python msconvert_ee.py .\ST000388
cd ST000388
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000388
rmdir /s /q .\
cd ..
rmdir ST000388

mkdir ST000763
cd ST000763
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000763 ./
cd ..
python msconvert_ee.py .\ST000763
cd ST000763
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000763
rmdir /s /q .\
cd ..
rmdir ST000763

mkdir MTBLS72
cd MTBLS72
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS72 ./
cd ..
python msconvert_ee.py .\MTBLS72
cd MTBLS72
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS72
rmdir /s /q .\
cd ..
rmdir MTBLS72

mkdir ST000865
cd ST000865
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000865 ./
cd ..
python chemstation_D_to_CDF.py .\ST000865
cd ST000865
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000865


