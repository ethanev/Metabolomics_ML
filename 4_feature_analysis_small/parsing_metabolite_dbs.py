# FOR hmdb - file: hmdb_metabolites.xml
# FOR Metacyc - file: compounds.dat
# FOR ChEBI - file: ChEMI_complete.sdf
# This is just to clean-up the datafiles and save them for later compoud lookup

import argparse
import pickle

class Metabolite:
	def __init__(self):
		self.mass = None
		self.name = None
		self.formula = None
		self.charge = None
		self.specimen_location = []

	def to_dict(self):
		return {'mass':self.mass, 'location':self.specimen_location, 'formula':self.formula, 'charge':self.charge }

def parse_hmdb(db_file):
	compound_dict = {}
	with open(db_file) as f:
		location = False
		for line in f:
			line = line.strip()
			if line == '<metabolite>':
				metabolite = Metabolite()
			if '<name>' in line:
				if metabolite.name == None:
					metabolite.name = line[6:-7]
			if '<monisotopic_molecular_weight>' in line:
				metabolite.mass = float(line[30:-31])

			if '<biospecimen_locations>' in line:
				location = True
			if '</biospecimen_locations>' in line:
				location = False
			if location:
				if '<biospecimen>' in line:
					metabolite.specimen_location.append(line[13:-14])

			if line == '</metabolite>':
				if metabolite.mass == None or float(metabolite.mass) == 0.0:
					# print(metabolite.mass)
					pass
				else:
					compound_dict[metabolite.name] = metabolite.to_dict()
	p_file = open('./hmdb_metabolites.pkl','wb')
	pickle.dump(compound_dict, p_file)
	p_file.close()

def parse_chebi(db_file):
	compound_dict = {}
	with open(db_file) as f:
		name = False
		formula = False
		mass = False
		charge = False
		for line in f:
			line = line.strip()
			if '> <ChEBI ID>' in line:
				metabolite = Metabolite()

			if name:
				metabolite.name = line
				name = False
			if line == '> <ChEBI Name>':
				name = True

			if mass:
				metabolite.mass = float(line)
				mass = False
			if line == '> <Monoisotopic Mass>':
				mass = True

			if formula:
				metabolite.formula = line
				formula = False
			if line == '> <Formulae>':
				formula = True

			if charge:
				metabolite.charge = int(line)
				charge = False
			if line == '> <Charge>':
				charge = True

			if line == '$$$$':
				if metabolite.mass == None or float(metabolite.mass) == 0.0:
					# print(metabolite.mass)
					pass
				else:
					compound_dict[metabolite.name] = metabolite.to_dict()
	p_file = open('./chebi_metabolites.pkl','wb')
	pickle.dump(compound_dict, p_file)
	p_file.close()
	
def parse_metacyc(db_file):
	compound_dict = {}
	with open(db_file, encoding="utf8", errors='ignore') as f:
	# with open(db_file) as f:
		for line in f:
			line = line.strip()
			if line[0] == '#':
				continue
			if 'UNIQUE-ID' in line:
				metabolite = Metabolite()
				metabolite.charge = 0
				metabolite.formula = ''
			if 'MONOISOTOPIC-MW' in line:
				metabolite.mass = float(line.split()[2])
			if 'COMMON-NAME' in line:
				metabolite.name = line[14:]
			if 'ATOM-CHARGES' in line:
				metabolite.charge += int(line.split()[3][:-1])
			if 'CHEMICAL-FORMULA' in line:
				metabolite.formula += line.split()[2][1:]
				metabolite.formula += line.split()[3][:-1]
			if line == '//':
				if metabolite.mass == None or float(metabolite.mass) == 0.0:
					# print(metabolite.mass)
					pass
				else:
					compound_dict[metabolite.name] = metabolite.to_dict()
	p_file = open('./metacyc_metabolites.pkl','wb')
	pickle.dump(compound_dict, p_file)
	p_file.close()

def parse_db(db, db_file):
	if db == 'metacyc':
		parse_metacyc(db_file)
	elif db == 'hmdb':
		parse_hmdb(db_file)
	else:
		parse_chebi(db_file)

def main():
	'''
	Define the files you want to parse and make into common look up format. 
	'''
	parser = argparse.ArgumentParser()
	parser.add_argument('-d', help='path + database file you want to parse')
	parser.add_argument('-t', help='which database are you using? one of: "metacyc", "hmdb", "chebi"')
	args = parser.parse_args()
	db_file = args.d
	db = args.t

	parse_db(db, db_file)		

if __name__ == '__main__':
	main()

