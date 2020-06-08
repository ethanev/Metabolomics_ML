mkdir ST000388
mkdir ST000389
mkdir ST000385
cd ST000388
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000388 ./
cd ..
python PEG_to_CDF.py .\ST000388
cd ST000388
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000388
rmdir /s /q .\
cd ..
rmdir ST000388

cd ST000389
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000389 ./
cd ..
python PEG_to_CDF.py .\ST000389
cd ST000389
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000389
rmdir /s /q .\
cd ..
rmdir ST000389

cd ST000385
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000385 ./
cd ..
python PEG_to_CDF.py .\ST000385
cd ST000385
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000385
rmdir /s /q .\
cd ..
rmdir ST000385

cd ST000368
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000368 ./
cd ..
python PEG_to_CDF.py .\ST000368
cd ST000368
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000368
rmdir /s /q .\
cd ..
rmdir ST000368

cd ST000381
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000381 ./
cd ..
python PEG_to_CDF.py .\ST000381
cd ST000381
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000381
rmdir /s /q .\
cd ..
rmdir ST000381

cd ST000382
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000382 ./
cd ..
python PEG_to_CDF.py .\ST000382
cd ST000382
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000382
rmdir /s /q .\
cd ..
rmdir ST000382

cd ST000383
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000383 ./
cd ..
python PEG_to_CDF.py .\ST000383
cd ST000383
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000383
rmdir /s /q .\
cd ..
rmdir ST000383

cd ST000397
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000397 ./
cd ..
python PEG_to_CDF.py .\ST000397
cd ST000397
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000397
rmdir /s /q .\
cd ..
rmdir ST000397

cd ST000386
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000386 ./
cd ..
python PEG_to_CDF.py .\ST000386
cd ST000386
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000386
rmdir /s /q .\
cd ..
rmdir ST000386

