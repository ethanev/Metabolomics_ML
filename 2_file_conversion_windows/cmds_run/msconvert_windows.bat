::WORKED
mkdir MTBLS364
cd MTBLS364
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS364 ./
cd ..
python msconvert_ee.py .\MTBLS364
cd MTBLS364
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS364
rmdir /s /q .\
cd ..
rmdir MTBLS364


::WORKED
mkdir MTBLS408
cd MTBLS408
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS408 ./
cd ..
python msconvert_ee.py .\MTBLS408
cd MTBLS408
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS408
rmdir /s /q .\
cd ..
rmdir MTBLS408

::WORKED
mkdir MTBLS20
cd MTBLS20
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS20 ./
cd ..
python msconvert_ee.py .\MTBLS20
cd MTBLS20
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS20
rmdir /s /q .\
cd ..
rmdir MTBLS20

::WORKED
mkdir MTBLS148
cd MTBLS148
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS148 ./
cd ..
python msconvert_ee.py .\MTBLS148
cd MTBLS148
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS148
rmdir /s /q .\
cd ..
rmdir MTBLS148

::WORKED
mkdir MTBLS279
cd MTBLS279
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS279 ./
cd ..
python msconvert_ee.py .\MTBLS279
cd MTBLS279
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS279
rmdir /s /q .\
cd ..
rmdir MTBLS279

::WORKED
mkdir MTBLS280
cd MTBLS280
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS280 ./
cd ..
python msconvert_ee.py .\MTBLS280
cd MTBLS280
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS280
rmdir /s /q .\
cd ..
rmdir MTBLS280

::WORKED
mkdir MTBLS253
cd MTBLS253
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS253 ./
cd ..
python msconvert_ee.py .\MTBLS253
cd MTBLS253
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS253
rmdir /s /q .\
cd ..
rmdir MTBLS253

::didnt work - doesnt know how to read .D (CAPS)...due to chemstation, use other script
::mkdir MTBLS191
::cd MTBLS191
::aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS191 ./
::cd ..
::python msconvert_ee.py .\MTBLS191
::cd MTBLS191
::aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS191
::rmdir /s /q .\
::cd ..
::rmdir MTBLS191

::WORKED
mkdir MTBLS656
cd MTBLS656
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS656 ./
cd ..
python msconvert_ee.py .\MTBLS656
cd MTBLS656
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS656
rmdir /s /q .\
cd ..
rmdir MTBLS656

::WORKED
mkdir MTBLS427
cd MTBLS427
aws s3 sync s3://almlab.bucket/revo_healthcare/MTBLS427 ./
cd ..
python msconvert_ee.py .\MTBLS427
cd MTBLS427
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/MTBLS427
rmdir /s /q .\
cd ..
rmdir MTBLS427

::DIDNT WORK - probably due to space in path name, manually altered and reran
::mkdir ST000389
::cd ST000389
::aws s3 sync s3://almlab.bucket/revo_healthcare/ST000389 ./
::cd ..
::python msconvert_ee.py .\ST000389
::cd ST000389
::aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000389
::rmdir /s /q .\
::cd ..
::rmdir ST000389

::DIDNT WORK - probably due to space in path name, manually altered and reran
::mkdir ST000388
::cd ST000388
::aws s3 sync s3://almlab.bucket/revo_healthcare/ST000388 ./
::cd ..
::python msconvert_ee.py .\ST000388
::cd ST000388
::aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000388
::rmdir /s /q .\
::cd ..
::rmdir ST000388

::didnt work - chemstation .D files, use other script
::mkdir ST000865
::cd ST000865
::aws s3 sync s3://almlab.bucket/revo_healthcare/ST000865 ./
::cd ..
::python msconvert_ee.py .\ST000865
::cd ST000865
::aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000865
::rmdir /s /q .\
::cd ..
::rmdir ST000865

::WORKED
mkdir ST000422
cd ST000422
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000422 ./
cd ..
python msconvert_ee.py .\ST000422
cd ST000422
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000422
rmdir /s /q .\
cd ..
rmdir ST000422

::WORKED
mkdir ST000421
cd ST000421
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000421 ./
cd ..
python msconvert_ee.py .\ST000421
cd ST000421
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000421
rmdir /s /q .\
cd ..
rmdir ST000421

::WORKED
mkdir ST000045
cd ST000045
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000045 ./
cd ..
python msconvert_ee.py .\ST000045
cd ST000045
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000045
rmdir /s /q .\
cd ..
rmdir ST000045

::DIDNT WORK
mkdir ST000046
cd ST000046
aws s3 sync s3://almlab.bucket/revo_healthcare/ST0000466 ./
cd ..
python msconvert_ee.py .\ST000046
cd ST000046
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000046
rmdir /s /q .\
cd ..
rmdir ST000046

::WORKED
mkdir ST000329
cd ST000329
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000329 ./
cd ..
python msconvert_ee.py .\ST000329
cd ST000329
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000329
rmdir /s /q .\
cd ..
rmdir ST000329

::WORKED
mkdir ST000578
cd ST000578
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000578 ./
cd ..
python msconvert_ee.py .\ST000578
cd ST000578
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000578
rmdir /s /q .\
cd ..
rmdir ST000578

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

::DIDNT WORK
mkdir ST000405
cd ST000405
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000405 ./
cd ..
python msconvert_ee.py .\ST000405
cd ST000405
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000405
rmdir /s /q .\
cd ..
rmdir ST000405

::DIDNT WORK - probably due to space in path name, manually altered and reran
mkdir ST000726
cd ST000726
aws s3 sync s3://almlab.bucket/revo_healthcare/ST000726 ./
cd ..
python msconvert_ee.py .\ST000726
cd ST000726
aws s3 sync ./ s3://almlab.bucket/revo_healthcare/ST000726
rmdir /s /q .\
cd ..
rmdir ST000726
