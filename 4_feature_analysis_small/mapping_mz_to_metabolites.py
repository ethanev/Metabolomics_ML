import argparse
import pickle
import pandas as pd

def parse_MTBLS352(datasets):
	'''
	Goal: fix the peaks data for one specific dataset!
	Input: the full dataset object 
	'''
	for ds in datasets['MTBLS352']:
		if 'DEMO' in ds['data_set']:
			data = list(ds['peaks'])
			rt = [ele.split('_')[0] for ele in data]
			mz = [ele.split('_')[1][:-3] for ele in data]
			peaks = pd.DataFrame({'rt': rt, 'mz':mz})
			ds['peaks'] = peaks
	return datasets

def get_db():
	'''
	Read in the assocaited database file
	'''
	meta_db = pickle.load(open('./metacyc_metabolites.pkl', 'rb'))
	chebi_db = pickle.load(open('./chebi_metabolites.pkl', 'rb'))
	hmdb_db = pickle.load(open('./hmdb_metabolites.pkl', 'rb'))
	return meta_db, chebi_db, hmdb_db

def neutralize_masses(mass_data, mode):
	'''
	Will make a dictionary of modes mapping to lists of masses
	'''
	adducts = {'H':-1.007276, 'Na': -22.989218, 'K': -38.963158,
			   'NH4': -18.033823, 'M-H': 1.007276, 'Cl': -34.969402, 'none':0.0}
	if mode == 'positive':
		possible_adduct_mz = {'H':[], 'Na':[], 'K':[], 'NH4':[], 'none':[]}
	elif mode == 'negative':
		possible_adduct_mz = {'M-H':[], 'Cl':[], 'none':[]} # maybe add in +Formic acid?
	else:
		possible_adduct_mz = {'H':[], 'Na':[], 'K':[], 'NH4':[], 'M-H':[], 'Cl':[], 'none':[]}

	for mz in mass_data:
		for adduct in possible_adduct_mz.keys():
			possible_adduct_mz[adduct].append(float(mz)+adducts[adduct])
	return possible_adduct_mz

def mz_db_lookup(mz_list, db, ppm):
	all_mz_data = []
	for mass in mz_list:
		mz_compounds = []
		for compound in db:
			# if db[compound]['mass'] == None or float(db[compound]['mass'])==0.0:
				# print(compound, db[compound]['mass'])
			# print(compound, db[compound])
			# try:
			ppm_err = abs((float(mass) - float(db[compound]['mass'])))/float(db[compound]['mass']) * 1000000
			# print(mass, db[compound]['mass'], ppm_err)
			# except:
				# pass
				# print('error', compound, db[compound])
			if ppm_err <= ppm:
				# print(compound, ppm_err, db[compound])
				mz_compounds.append('%s, %.3f'%(compound, ppm_err))
		all_mz_data.append(mz_compounds)
	return all_mz_data

def map_db_adducts_lookup(mz_dict, db_dict, ppm):
	'''
	input:
		mz_dict: dictionary of adduct mapping to list of masses corrected for the adduct
		db_dict: dictionary of databases
		ppm: ppm error max for compound ID
	'''
	mapped_metabolites = {}
	mapped_metabolites['mz'] = mz_dict['none']
	for db in db_dict:
		for adduct in mz_dict:
			add_db = adduct+'_'+db
			mapped_metabolites[add_db] = mz_db_lookup(mz_dict[adduct], db_dict[db], ppm)
	return pd.DataFrame(mapped_metabolites)

def get_all_ds_mz(datasets, features_to_use='all'):
	'''
	make a dictionary mapping study to list of dicts where each dict maps data set name to mz features of interest
	'''
	skip_ds = ['m_oxylipin_chronic_hep_b', 'm_GC_nmfi_and_bsi_diagnosis_v2_maf',
	           'DEMO_neg-norm-metaboAnalystInput_0_NGT', 'DEMO_neg-norm-metaboAnalystInput_2_Pre-DM',
	           'DEMO_neg-norm-metaboAnalystInput_1_T2D', 'DEMO_pos-norm-metaboAnalystInput_0_NGT', 
	           'DEMO_pos-norm-metaboAnalystInput_2_Pre-DM', 'DEMO_pos-norm-metaboAnalystInput_1_T2D', 
	           'm_CER_mass_spectrometry_v4_3_CS', 'm_CER_mass_spectrometry_v4_0_NS', 
	           'm_CER_mass_spectrometry_v4_2_FS', 'm_CER_mass_spectrometry_v4_1_COPD', 'm_EICO_mass_spectrometry_v4_3_CS',
	           'm_EICO_mass_spectrometry_v4_3_CS','m_EICO_mass_spectrometry_v4_0_NS', 'm_EICO_mass_spectrometry_v4_2_FS',
	           'm_EICO_mass_spectrometry_v4_1_COPD','m_SHOT_mass_spectrometry_v4_3_CS','m_SHOT_mass_spectrometry_v4_0_NS',
	           'm_SHOT_mass_spectrometry_v4_2_FS', 'm_SHOT_mass_spectrometry_v4_1_COPD', 'm_TAG_mass_spectrometry_v4_3_CS',
	           'm_TAG_mass_spectrometry_v4_0_NS', 'm_TAG_mass_spectrometry_v4_2_FS', 'm_TAG_mass_spectrometry_v4_1_COPD', 
	           'm_typhoid_carriage_metabolite_profiling_mass_spectrometry_v2_maf', 'AN000452_0_Healthy',
	           'AN000452_1_CRC', 'AN000452_2_Polyp', 'AN000525_1_MCD', 'AN000525_2_FSGS', 'AN000525_0_Control', 'AN000526_0_Control', 'AN000526_2_FSGS', 'AN000526_1_MCD', 
	           'AN000580', 'AN000581', 'AN000582', 'AN000583', 'AN000705', 'AN000706', 'AN000931', 'AN000076_0_CN', 
	           'AN000077_0_CN', 'AN000078_0_CN', 'AN000079_0_CN', 'AN000076_2_MCI', 'AN000077_2_MCI', 'AN000078_2_MCI', 'AN000079_2_MCI',
	           'AN000076_1_AD', 'AN000077_1_AD', 'AN000078_1_AD', 'AN000079_1_AD']
	low_res = ['IPO_aligned_MTBLS105_qMS', 'IPO_aligned_MTBLS105_SIM-MS', 'IPO_aligned_MTBLS315_mzData', 'AN000101',
	           'XCMS-Report-annotated-SingleClass-GCTOF.', 'AN000615', 'IPO_aligned_ST000381_pos', 'AN000618',
	           'AN000603_plasma', 'AN000603_serum', 'AN000620_plasma', 'AN000620_serum', 'IPO_aligned_ST000385_adc2_plasma',
	           'IPO_aligned_ST000385_adc2_serum', 'IPO_aligned_ST000385_adc1_plasma', 'IPO_aligned_ST000385_adc1_serum',
	           'AN000625_GC', 'IPO_aligned_ST000388_GC', 'AN000628_plasma', 'AN000628_serum', 'IPO_aligned_ST000392_plasma',
	           'IPO_aligned_ST000392_serum', 'AN000633', 'IPO_aligned_ST000396', 'AN001390all_author', 
	           'IPO_aligned_ST000865_batch2_raw', 'IPO_aligned_ST000865_batch3_raw', 'IPO_aligned_ST000865_onebatch']
	mz_data_dict = {}
	for k,v in datasets.items():
		mz_data_dict[k] = []
		for ds in v:
			if ds['data_set'] in skip_ds:
				continue
			if ds['data_set'] in low_res:
				continue
			# print(k, ds['data_set'], ds['pvalues'].shape, ds['clf'].coef_.shape, ds['features'].shape, ds['peaks'].shape)
			mz_data = get_data_from_ds(ds, features_to_use)
			mz_data_dict[k].append([ds['data_set'],mz_data])
	return mz_data_dict

def get_data_from_ds(dataset, features_to_use='all'):
	'''
	given a single dataset, this will return the desired features from the 'peaks' list. 
	'''
	peaks_data = dataset['peaks']
	mz_labels = ['mz', 'Mass-to-Charge', 'mass_to_charge', 'Mass', 'mzmed', 'm/z', 'moverz_quant',
                 'quant mz', 'quantified m/z', 'row m/z', 'Quant mx', 'Quantified m/z']
	for header in list(peaks_data):
		if header in mz_labels:
			mz_data = peaks_data[header]
			break
	# 1) if you want to use the features that are significant, mask the peaks list by the list of sig feats
	if features_to_use == 'sig':
		p_mask = dataset['pvalues'] < 0.05
		return mz_data[p_mask]
	# 2) if you want to use the features from the model, mask by non-zero model features
	elif features_to_use == 'model':
		coef_mask = dataset['clf'].coef_.squeeze() != 0
		return mz_data[coef_mask]
	# 3) otherwise, use all the features and look all of them up. 
	else:
		return mz_data

def rank_candidate_metabolites():
	pass

def parse_args():
	### example: 
	# python ./mapping_mz_to_metabolites.py -f './YES_bn_ds_models_and_sigfeat_NO_log_NO_standscal_NO_multi_mapped_labels.pkl' -p 5 -w 'sig'
	parser = argparse.ArgumentParser()
	parser.add_argument('-f', help='input file of masses - Note there should be a column header! (csv and tsv supported, pickled model/sigfeat')
	parser.add_argument('-c', help='which column number in the csv do you want to use? USE 0 INDEXING', default=0)
	parser.add_argument('-d', help='database you want to search against', default='all')
	parser.add_argument('-p', help='ppm error acceptable in compound matching, "positive" or "negative" give you specific results \
									otherwise it will give you both positive and negative')
	parser.add_argument('-s', help='if using pickled data, which study? ie MTBLS17 etc', default=False)
	parser.add_argument('-w', help='which features to use? use: "sig", "model" or "all"', default='all')
	parser.add_argument('-m', help='ion mode used in the mass spec', default='none')
	parser.add_argument('-o', help='output file name', default='./feat_to_metab.csv')
	args = parser.parse_args()
	mz_file = str(args.f)
	csv_col = int(args.c)
	database = args.d
	ppm = float(args.p)
	study = args.s
	features_to_use = args.w
	mode = args.m
	out_file = args.o
	return mz_file, csv_col, database, ppm, mode, study, features_to_use, out_file

def main():
	mz_file, csv_col, database, ppm, mode, study, features_to_use,out_file = parse_args()
	# get the databases you want to do the look up from
	meta_db, chebi_db, hmdb_db = get_db()
	dbs = {'meta':meta_db, 'chebi':chebi_db, 'hmdb':hmdb_db}
	# next line is kinda a bad assumption...
	try:
		metadata = pd.read_csv('./ms_instrument_column_polarity_dataset_names.csv').set_index('analysis')
	except:
		print('no metadata file available, not using')

	# read in the masses to look up
	if mz_file[-3:] == 'pkl':
		# use a pickle with models and sig feats and 'peaks' for full utility
		pickled_data = pickle.load(open(mz_file, 'rb'))
		pickled_data = parse_MTBLS352(pickled_data)
		#get dict mapping study to list of datasets mapping ds_name to list of feat
		all_mz_data = get_all_ds_mz(pickled_data, features_to_use)		
		for study in all_mz_data:
			for dataset in all_mz_data[study]:
				out_file = study+'_'+dataset[0]+'_metabolites_'+features_to_use+'.csv'
				mode = metadata.loc[dataset[0]]['mode']
				mz_data_neutralized = neutralize_masses(dataset[1], mode)
				looked_up_metabolites = map_db_adducts_lookup(mz_data_neutralized, dbs, ppm)
				looked_up_metabolites.to_csv(out_file)
	else:
		if mz_file[-3:] == 'csv':
			mz_data = pd.read_csv(mz_file).iloc[:,csv_col]
			mz_data = mz_data[:3]
		elif mz_file[-3:] == 'tsv':
			mz_data = pd.read_csv(mz_file, sep='\t').iloc[:,csv_col]
			mz_data = mz_data[:3]
		'''
		1. probably need some ranking system to give the final suggestions
			based on LC type / column used (ie if its say it could be a polar metab or lipid but you ran c18 its probably lipid)
		'''
		# get neutral masses for all mz values
			# ASSUMPTION: all mz values come from singly ionized species! It's not a great assumption. 
			# gives a dictionary of adducts mapping to the associated masses
		mz_data_neutralized = neutralize_masses(mz_data, mode)
		# look up masses in each of the databases
		# multiple looks ups: all 3 databases with all adducts. 
		looked_up_metabolites = map_db_adducts_lookup(mz_data_neutralized, dbs, ppm)
		looked_up_metabolites.to_csv(out_file)


if __name__ == '__main__':
	main()