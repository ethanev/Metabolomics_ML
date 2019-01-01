If you have good parameters for all the functions in the xcms pipeline, just input into the run_xcms.sh script

Otherwise a few options:

A) full pipeline:
	1) run: full_ipo_xcms.py 
	Example:
		python full_ipo_xcms.py --data_type 'mzXML' --in_path='/home/ubuntu/data/downloading_data/MTBLS315/data' --data_file='mzXML.txt' --acq_mode='positive' --csv_out='IPO_aligned_new_mzXML_P.csv' --out_path='/home/ubuntu/data/downloading_data/MTBLS315/data' >> full_mzXML.out &


B) partial pipeline
	1) run several IPO trials
	2) use run_ipo_xcms.py 
		this will also run the xcms for you


