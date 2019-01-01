def drop_redundant(df):
	seen = []
	indexes = []
	for ind, row in df.iterrows():
    	if (row['mass_to_charge'], row['charge'], row['retention time']) not in seen:
        	seen.append((row['mass_to_charge'], row['charge'], row['retention time']))
        	continue
    	else:
	        indexes.append(ind)        
	return df.drop(indexes)