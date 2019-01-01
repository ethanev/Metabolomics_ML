# put these into a *.sh file and then run this with:
#./*.sh & 


# python full_ipo_xcms.py --data_type 'CDF' \
# --in_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/qMS' \
# --data_file='gc-qms.txt' --acq_mode='positive' \
# --csv_out='IPO_aligned_MTBLS105_qMS.csv' \
# --out_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/qMS' \
# --log_file='MTBLS105_qMS.log' 

##ALREADY RAN! 9/13 to 9/14 - RERUNNING
python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/qMS' \
--data_file='mzData_from_cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS105_qMS.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/qMS' \
--log_file='MTBLS105_qMS.log' 

##########################
##ALREADY RAN - 9/13 to 9/14 - RERUNNING
python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/global_neg' \
--data_file='global_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS146_global_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/global_neg' \
--log_file='MTBLS146_global_neg.log' 

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/global_pos' \
--data_file='global_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS146_global_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/global_pos' \
--log_file='MTBLS146_global_pos.log' 

### IPO CANNOT OPEN THESE FILES!
# python full_ipo_xcms.py --data_type 'mzML' \
# --in_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/targ_pos_lip1' \
# --data_file='tar_pos_lip.txt' --acq_mode='positive' \
# --csv_out='IPO_aligned_MTBLS146_tar_pos_lip.csv' \
# --out_path='/home/ubuntu/data/downloading_data/MTBLS146/raw/targ_pos_lip1' \
# --log_file='MTBLS146_targ_pos_lip.log' 
###########################################


python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS315/data/mzData' \
--data_file='mzData_files.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS315_mzData.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/mzData' \
--log_file='MTBLS315_mzData.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS315/data/n_mzML' \
--data_file='n_mzML.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS315_n_mzML.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/n_mzML' \
--log_file='MTBLS315_n_mzML.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS315/data/p_mzML' \
--data_file='p_mzML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS315_p_mzML.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/p_mzML' \
--log_file='MTBLS315_p_mzML.log' 


python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS315/data/mzXML_5P' \
--data_file='mzXML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS315_p_mzXML.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS315/data/mzXML_5P' \
--log_file='MTBLS315_p_mzXML.log' 




python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/SIM-MS' \
--data_file='mzData_from_cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS105_SIM-MS.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/SIM-MS' \
--log_file='MTBLS105_SIM-MS.log'  

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/TOFMS' \
--data_file='tofms.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS105_TOFMS.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS105/raw/TOFMS' \
--log_file='MTBLS105_TOFMS.log' 




python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS148/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS148_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS148/raw/pos' \
--log_file='MTBLS148_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS148/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS148_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS148/raw/neg' \
--log_file='MTBLS148_neg.log' 




python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp1' \
--data_file='neg_exp1.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS17_neg_exp1.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp1' \
--log_file='MTBLS17_neg_exp1.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp2' \
--data_file='neg_exp2.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS17_neg_exp2.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp2' \
--log_file='MTBLS17_neg_exp2.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp3' \
--data_file='neg_exp3.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS17_neg_exp3.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/neg/exp3' \
--log_file='MTBLS17_neg_exp3.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp1' \
--data_file='pos_exp1.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS17_pos_exp1.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp1' \
--log_file='MTBLS17_pos_exp1.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp2' \
--data_file='pos_exp2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS17_pos_exp2.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp2' \
--log_file='MTBLS17_pos_exp2.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp3' \
--data_file='pos_exp3.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS17_pos_exp3.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS17/raw/pos/exp3' \
--log_file='MTBLS17_pos_exp3.log' 



python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/pos/exp1' \
--data_file='pos_exp1.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS19_pos_exp1.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/pos/exp1' \
--log_file='MTBLS19_pos_exp1.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/pos/exp2' \
--data_file='pos_exp2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS19_pos_exp2.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/pos/exp2' \
--log_file='MTBLS19_pos_exp2.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/neg/exp1' \
--data_file='neg_exp1.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS19_neg_exp1.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/neg/exp1' \
--log_file='MTBLS19_neg_exp1.log' 

python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/neg/exp2' \
--data_file='neg_exp2.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS19_neg_exp2.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS19/raw/neg/exp2' \
--log_file='MTBLS19_neg_exp2.log' 



python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS191/cdf' \
--data_file='vic_u_cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS191.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS191/cdf' \
--log_file='MTBLS191.log' 



python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439020_pos' \
--data_file='439020_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS20_439020_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439020_pos' \
--log_file='MTBLS20_439020_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439020_neg' \
--data_file='439020_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS20_439020_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439020_neg' \
--log_file='MTBLS20_439020_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439033_neg' \
--data_file='439033_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS20_439033_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439033_neg' \
--log_file='MTBLS20_439033_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439033_pos' \
--data_file='439033_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS20_439033_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS20/raw/439033_pos' \
--log_file='MTBLS20_439033_pos.log' 



python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS200/raw/cdf' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS200.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS200/raw/cdf' \
--log_file='MTBLS200.log' 


python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS218/raw' \
--data_file='mzXML.txt' --acq_mode='alternating' \
--csv_out='IPO_aligned_MTBLS218.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS218/raw' \
--log_file='MTBLS218.log' 




python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/plasma/pos' \
--data_file='plasma_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS264_plasma_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/plasma/pos' \
--log_file='MTBLS264_plasma_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/plasma/neg' \
--data_file='plasma_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS264_plasma_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/plasma/neg' \
--log_file='MTBLS264_plasma_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/rbc/pos' \
--data_file='rbc_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS264_rbc_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/rbc/pos' \
--log_file='MTBLS264_rbc_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/rbc/neg' \
--data_file='rbc_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS264_rbc_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/rbc/neg' \
--log_file='MTBLS264_rbc_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/blood/pos' \
--data_file='blood_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS264_blood_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/blood/pos' \
--log_file='MTBLS264_blood_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/blood/neg' \
--data_file='blood_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS264_blood_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS264/raw/blood/neg' \
--log_file='MTBLS264_blood_neg.log' 




python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS266/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS266_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS266/raw/neg' \
--log_file='MTBLS266_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS266/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS266_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS266/raw/pos' \
--log_file='MTBLS266_pos.log' 





python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS28/raw/pos_new' \
--log_file='MTBLS28_pos.log' --data_file='pos_mzData.txt' \
--acq_mode='positive' --csv_out='IPO_aligned_MTBLS28_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS28/raw/pos_new' 

python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS28/raw/neg_new' \
--log_file='MTBLS28_neg.log' --data_file='neg_mzData.txt' \
--acq_mode='negative' --csv_out='IPO_aligned_MTBLS28_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS28/raw/neg_new' 



python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/tag/samples' \
--data_file='tag.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS358_tag.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/tag/samples' \
--log_file='MTBLS358_tag.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/sg_pos/samples' \
--data_file='sgp.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS358_sgp.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/sg_pos/samples' \
--log_file='MTBLS358_sgp.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/sg_neg/samples' \
--data_file='sgn.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS358_sgn.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/sg_neg/samples' \
--log_file='MTBLS358_sgn.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/ec/samples' \
--data_file='ec.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS358_ec.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/ec/samples' \
--log_file='MTBLS358_ec.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/cer/samples' \
--data_file='cer.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS358_cer.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS358/raw/data/cer/samples' \
--log_file='MTBLS358_cer.log' 




python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/HILIC/neg' \
--data_file='hilic_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS364_hilic_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/HILIC/neg' \
--log_file='MTBLS364_hilic_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/HILIC/pos' \
--data_file='hilic_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS364_hilic_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/HILIC/pos' \
--log_file='MTBLS364_hilic_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/Lipid/neg' \
--data_file='lipid_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS364_lipid_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/Lipid/neg' \
--log_file='MTBLS364_lipid_neg.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/Lipid/pos' \
--data_file='lipid_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS364_lipid_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS364/raw/Lipid/pos' \
--log_file='MTBLS364_lipid_pos.log' 





python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS404/raw/data' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS404_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS404/raw/data' \
--log_file='MTBLS404_neg.log' 



python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS408/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS408_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS408/raw/pos' \
--log_file='MTBLS408_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS408/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS408_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS408/raw/neg' \
--log_file='MTBLS408_neg.log' 



python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS423/raw/data' \
--data_file='mzXML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS423.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS423/raw/data' \
--log_file='MTBLS423.log' 



python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS656/raw/saliva' \
--data_file='saliva.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS656_saliva.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS656/raw/saliva' \
--log_file='MTBLS656_saliva.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS656/raw/plasma' \
--data_file='plasma.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS656_plasma.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS656/raw/plasma' \
--log_file='MTBLS656_plasma.log' 



python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS665/raw/hilic' \
--data_file='hilic.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS665_hilic.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS665/raw/hilic' \
--log_file='MTBLS665_hilic.log' 

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS665/raw/c18' \
--data_file='c18.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS665_c18.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS665/raw/c18' \
--log_file='MTBLS665_c18.log' 


python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS72/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS72_pos.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS72/raw/pos' \
--log_file='MTBLS72_pos.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS72/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS72_neg.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS72/raw/neg' \
--log_file='MTBLS72_neg.log' 



python full_ipo_xcms.py --data_type 'CDF' \
--in_path='/home/ubuntu/data/downloading_data/MTBLS92/raw' \
--data_file='cdf_files.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS92.csv' \
--out_path='/home/ubuntu/data/downloading_data/MTBLS92/raw' \
--log_file='MTBLS92.log' 


############
############
# All for the starcluster directory tree
############
############

python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/GC_Data' \
--data_file='mzData_from_cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000388_GC.csv' \
--out_path='/home/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/GC_Data' \
--log_file='ST000388_GC.log' 

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/LC_Data' \
--data_file='lc_pos_mzML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000388_LC.csv' \
--out_path='/home/downloading_data/ST000388/raw/Serum_phosphatidylethanolamine_levels/Raw_Data/LC_Data' \
--log_file='ST000388_LC.log' 


python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/ST000392/data/serum' \
--data_file='serum_mzData.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000392_serum.csv' \
--out_path='/home/downloading_data/ST000392/data/serum' \
--log_file='ST000392_serum.log' 

python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/ST000392/data/plasma' \
--data_file='plasma_mzData.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000392_plasma.csv' \
--out_path='/home/downloading_data/ST000392/data/plasma' \
--log_file='ST000392_plasma.log' 

python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/ST000396/raw' \
--data_file='mzData_from_cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000396.csv' \
--out_path='/home/downloading_data/ST000396/raw' \
--log_file='ST000396.log'


python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/11Feb' \
--data_file='mzML_11feb.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000045_11feb_neg.csv' \
--out_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/11Feb' \
--log_file='ST000045_11feb_neg.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/2Feb' \
--data_file='mzML_2feb.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000045_2feb_pos.csv' \
--out_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/2Feb' \
--log_file='ST000045_2feb_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/11Mar' \
--data_file='mzML_11mar.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000045_11mar_pos.csv' \
--out_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/11Mar' \
--log_file='ST000045_11mar_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/17Mar' \
--data_file='mzML_17mar.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000045_17mar_neg.csv' \
--out_path='/home/downloading_data/ST000045/raw/PMID-22415876-Dutta-Nair-Diabetes-2012/raw-data-files/17Mar' \
--log_file='ST000045_17mar_neg.log'






python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000329/raw/Raw_Data/Positive_Mode' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000329_pos.csv' \
--out_path='/home/downloading_data/ST000329/raw/Raw_Data/Positive_Mode' \
--log_file='ST000329_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000329/raw/Raw_Data/Negative_Mode' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000329_neg.csv' \
--out_path='/home/downloading_data/ST000329/raw/Raw_Data/Negative_Mode' \
--log_file='ST000329_neg.log'


python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000368/raw' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000368_pos.csv' \
--out_path='/home/downloading_data/ST000368/raw' \
--log_file='ST000368_pos.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000381/raw/Urinary_Metabolites_in_ICPBS/Raw_Data' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000381_pos.csv' \
--out_path='/home/downloading_data/ST000381/raw/Urinary_Metabolites_in_ICPBS/Raw_Data' \
--log_file='ST000381_pos.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000397/raw' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000397_pos.csv' \
--out_path='/home/downloading_data/ST000397/raw' \
--log_file='ST000397_pos.log'




python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000578/raw/raw/C18' \
--data_file='C18_mzML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000578_C18_pos.csv' \
--out_path='/home/downloading_data/ST000578/raw/raw/C18' \
--log_file='ST000578_C18_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000578/raw/raw/AE' \
--data_file='AE_mzML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000578_AE_pos.csv' \
--out_path='/home/downloading_data/ST000578/raw/raw/AE' \
--log_file='ST000578_AE_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000726/raw/EX00702/Raw_data/POS' \
--data_file='pos_mzML.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000726_pos.csv' \
--out_path='/home/downloading_data/ST000726/raw/EX00702/Raw_data/POS' \
--log_file='ST000726_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000726/raw/EX00702/Raw_data/NEG' \
--data_file='neg_mzML.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000726_neg.csv' \
--out_path='/home/downloading_data/ST000726/raw/EX00702/Raw_data/NEG' \
--log_file='ST000726_neg.log'



#9/21
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120625' \
--data_file='mzML_20120625.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000046_20120625_pos_c18.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120625' \
--log_file='ST000046_20120625_pos_c18.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120604' \
--data_file='mzML_20120604.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000046_20120604_pos_hilic.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120604' \
--log_file='ST000046_20120604_pos_hilic.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120606' \
--data_file='mzML_20120606.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000046_20120606_neg_hilic.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120606' \
--log_file='ST000046_20120606_neg_hilic.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120611' \
--data_file='mzML_20120611.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000046_20120611_pos_hilic.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120611' \
--log_file='ST000046_20120611_pos_hilic.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120613' \
--data_file='mzML_20120613.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000046_20120613_neg_hilic.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120613' \
--log_file='ST000046_20120613_neg_hilic.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120618' \
--data_file='mzML_20120618.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000046_20120618_pos_c18.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120618' \
--log_file='ST000046_20120618_pos_c18.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120620' \
--data_file='mzML_20120620.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000046_20120620_neg_c18.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120620' \
--log_file='ST000046_20120620_neg_c18.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120627' \
--data_file='mzML_20120627.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000046_20120627_neg_c18.csv' \
--out_path='/home/downloading_data/ST000046/raw/raw/ST000046/raw-data-files/20120627' \
--log_file='ST000046_20120627_neg_c18.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000063/raw/165090_cdf' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000063_positive.csv' \
--out_path='/home/downloading_data/ST000063/raw/165090_cdf' \
--log_file='ST000063_positive.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000062' \
--data_file='cdf.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000062_positive.csv' \
--out_path='/home/downloading_data/ST000062' \
--log_file='ST000062_positive.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/ST000291/raw/Data/raw_files/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000291_positive.csv' \
--out_path='/home/downloading_data/ST000291/raw/Data/raw_files/pos' \
--log_file='ST000291_positive.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/ST000291/raw/Data/raw_files/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000291_negative.csv' \
--out_path='/home/downloading_data/ST000291/raw/Data/raw_files/neg' \
--log_file='ST000291_negative.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/ST000292/raw/Data/raw_files/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000292_positive.csv' \
--out_path='/home/downloading_data/ST000292/raw/Data/raw_files/pos' \
--log_file='ST000292_positive.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/ST000292/raw/Data/raw_files/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000292_negative.csv' \
--out_path='/home/downloading_data/ST000292/raw/Data/raw_files/neg' \
--log_file='ST000292_negative.log'


python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Untargeted/POS' \
--data_file='untar_pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000763_untar_pos.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Untargeted/POS' \
--log_file='ST000763_untar_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Untargeted/NEG' \
--data_file='untar_neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000763_untar_neg.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Untargeted/NEG' \
--log_file='ST000763_untar_neg.log'

#TREAT AS ONE!
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH1' \
--data_file='neg_b1.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000763_lip_neg_b1.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH1' \
--log_file='ST000763_lip_neg_b1.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH2' \
--data_file='neg_b2.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000763_lip_neg_b2.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH2' \
--log_file='ST000763_lip_neg_b2.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH4' \
--data_file='neg_b4.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000763_lip_neg_b4.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH4' \
--log_file='ST000763_lip_neg_b4.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH3' \
--data_file='neg_b3.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000763_lip_neg_b3.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/NEG/BATCH3' \
--log_file='ST000763_lip_neg_b3.log'
# treat as one!
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH1' \
--data_file='pos_b1.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000763_lip_pos_b1.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH1' \
--log_file='ST000763_lip_pos_b1.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH2' \
--data_file='pos_b2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000763_lip_pos_b2.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH2' \
--log_file='ST000763_lip_pos_b2.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH3' \
--data_file='pos_b3.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000763_lip_pos_b3.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH3' \
--log_file='ST000763_lip_pos_b3.log'
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH4' \
--data_file='pos_b4.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000763_lip_pos_b4.csv' \
--out_path='/home/downloading_data/ST000763/raw/EX00543/Raw_data/Lipidomics/POS/BATCH4' \
--log_file='ST000763_lip_pos_b4.log'


python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS427/raw/pos/MM' \
--data_file='pos_mm.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS427_pos_mm.csv' \
--out_path='/home/downloading_data/MTBLS427/raw/pos/MM' \
--log_file='MTBLS427_pos_mm.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS427/raw/pos/HL' \
--data_file='pos_hl.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS427_pos_hl.csv' \
--out_path='/home/downloading_data/MTBLS427/raw/pos/HL' \
--log_file='MTBLS427_pos_hl.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS427/raw/pos/GC' \
--data_file='pos_gc.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS427_pos_gc.csv' \
--out_path='/home/downloading_data/MTBLS427/raw/pos/GC' \
--log_file='MTBLS427_pos_gc.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS427/raw/neg/HL' \
--data_file='neg_hl.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS427_neg_hl.csv' \
--out_path='/home/downloading_data/MTBLS427/raw/neg/HL' \
--log_file='MTBLS427_neg_hl.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS427/raw/neg/GC' \
--data_file='neg_gc.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS427_neg_gc.csv' \
--out_path='/home/downloading_data/MTBLS427/raw/neg/GC' \
--log_file='MTBLS427_neg_gc.log'



python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000421/raw/nc18' \
--data_file='neg_c18.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000421_neg_c18.csv' \
--out_path='/home/downloading_data/ST000421/raw/nc18' \
--log_file='ST000421_neg_c18.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000421/raw/pc18' \
--data_file='pos_c18.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000421_pos_c18.csv' \
--out_path='/home/downloading_data/ST000421/raw/pc18' \
--log_file='ST000421_pos_c18.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000421/raw/n_hil' \
--data_file='neg_hil.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_ST000421_neg_hil.csv' \
--out_path='/home/downloading_data/ST000421/raw/n_hil' \
--log_file='ST000421_neg_hil.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/ST000421/raw/p_hil' \
--data_file='pos_hil.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000421_pos_hil.csv' \
--out_path='/home/downloading_data/ST000421/raw/p_hil' \
--log_file='ST000421_pos_hil.log'

## MAYBE DONT RUN - TARGETED 
# python full_ipo_xcms.py --data_type 'mzML' \
# --in_path='/home/downloading_data/MTBLS279/raw/pos' \
# --data_file='pos.txt' --acq_mode='positive' \
# --csv_out='IPO_aligned_MTBLS279_pos.csv' \
# --out_path='/home/downloading_data/MTBLS279/raw/pos' \
# --log_file='MTBLS279_pos.log'

# python full_ipo_xcms.py --data_type 'mzML' \
# --in_path='/home/downloading_data/MTBLS279/raw/neg' \
# --data_file='neg.txt' --acq_mode='negative' \
# --csv_out='IPO_aligned_MTBLS279_neg.csv' \
# --out_path='/home/downloading_data/MTBLS279/raw/neg' \
# --log_file='MTBLS279_neg.log'


python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC2/serum' \
--data_file='adc2_serum.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000385_adc2_serum.csv' \
--out_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC2/serum' \
--log_file='ST000385_adc2_serum.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC2/plasma' \
--data_file='adc2_plasma.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000385_adc2_plasma.csv' \
--out_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC2/plasma' \
--log_file='ST000385_adc2_plasma.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC1/serum' \
--data_file='adc1_serum.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000385_adc1_serum.csv' \
--out_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC1/serum' \
--log_file='ST000385_adc1_serum.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC1/plasma' \
--data_file='adc1_plasma.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000385_adc1_plasma.csv' \
--out_path='/home/downloading_data/ST000385/raw/Meta_blood_biomark_adenocarcinoma/Raw_Data/ADC1/plasma' \
--log_file='ST000385_adc1_plasma.log'


# 9/22/18:
python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000865/raw/Batch3' \
--data_file='batch3.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000865_batch3.csv' \
--out_path='/home/downloading_data/ST000865/raw/Batch3' \
--log_file='ST000865_batch3.log'

python full_ipo_xcms.py --data_type 'cdf' \
--in_path='/home/downloading_data/ST000865/raw/Batch2' \
--data_file='batch2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_ST000865_batch2.csv' \
--out_path='/home/downloading_data/ST000865/raw/Batch2' \
--log_file='ST000865_batch2.log'



python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/Feng/urine/batch_2' \
--data_file='urine_b2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_Feng_urine_batch2.csv' \
--out_path='/home/downloading_data/Feng/urine/batch_2' \
--log_file='Feng_urine_b2.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/Feng/urine/batch_1' \
--data_file='urine_b1.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_Feng_urine_batch1.csv' \
--out_path='/home/downloading_data/Feng/urine/batch_1' \
--log_file='Feng_urine_b1.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/Feng/serum/batch_2' \
--data_file='serum_b2.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_Feng_serum_batch2.csv' \
--out_path='/home/downloading_data/Feng/serum/batch_2' \
--log_file='Feng_serum_b2.log'

python full_ipo_xcms.py --data_type 'mzXML' \
--in_path='/home/downloading_data/Feng/serum/batch_1' \
--data_file='serum_b1.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_Feng_serum_batch1.csv' \
--out_path='/home/downloading_data/Feng/serum/batch_1' \
--log_file='Feng_serum_b1.log'


python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS354/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS354_pos.csv' \
--out_path='/home/downloading_data/MTBLS354/raw/pos' \
--log_file='MTBLS354_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS354/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS354_neg.csv' \
--out_path='/home/downloading_data/MTBLS354/raw/neg' \
--log_file='MTBLS354_neg.log'


python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/MTBLS17/raw/neg/all' \
--ipo_files='IPO_17.out IPO_279.out IPO_29.out' \
--data_file='all.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS17_all_neg.csv' \
--out_path='/home/downloading_data/MTBLS17/raw/neg/all' \
--log_file='MTBLS17_all_neg.log'

python full_ipo_xcms.py --data_type 'mzData' \
--in_path='/home/downloading_data/MTBLS17/raw/pos/all' \
--ipo_files='IPO_257.out IPO_66.out IPO_8.out' \
--data_file='all.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS17_all_pos.csv' \
--out_path='/home/downloading_data/MTBLS17/raw/pos/all' \
--log_file='MTBLS17_all_pos.log'





python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS352/raw/neg' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_MTBLS352_neg.csv' \
--out_path='/home/downloading_data/MTBLS352/raw/neg' \
--log_file='MTBLS352_neg.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/MTBLS352/raw/pos' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_MTBLS352_pos.csv' \
--out_path='/home/downloading_data/MTBLS352/raw/pos' \
--log_file='MTBLS352_pos.log'




# 10/19/18 - snyderome
python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/snyder/Second_batch/Positive_mode' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_snyderome_b2_pos.csv' \
--out_path='/home/downloading_data/snyder/Second_batch/Positive_mode' \
--log_file='Snyderome_b2_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/snyder/Second_batch/Negative_mode' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_snyderome_b2_neg.csv' \
--out_path='/home/downloading_data/snyder/Second_batch/Negative_mode' \
--log_file='Snyderome_b2_neg.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/snyder/First_batch/positive_mode' \
--data_file='pos.txt' --acq_mode='positive' \
--csv_out='IPO_aligned_snyderome_b1_pos.csv' \
--out_path='/home/downloading_data/snyder/First_batch/positive_mode' \
--log_file='Snyderome_b1_pos.log'

python full_ipo_xcms.py --data_type 'mzML' \
--in_path='/home/downloading_data/snyder/First_batch/negative_mode' \
--data_file='neg.txt' --acq_mode='negative' \
--csv_out='IPO_aligned_snyderome_b1_neg.csv' \
--out_path='/home/downloading_data/snyder/First_batch/negative_mode' \
--log_file='Snyderome_b1_neg.log'