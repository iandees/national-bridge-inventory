data/2016/2016del.zip:
	mkdir -p data/2016
	curl -o data/2016/2016del.zip https://www.fhwa.dot.gov/bridge/nbi/2016del.zip
	unzip data/2016/2016del.zip -d data/2016

data/2016/%.csv: data/2016/2016del.zip
	python bridge_inventory_parser.py $(subst .csv,16.TXT,$@) $@

clean:
	rm -f \
	data/2016/AL.csv \
	data/2016/AK.csv \
	data/2016/AR.csv \
	data/2016/AZ.csv \
	data/2016/CA.csv \
	data/2016/CO.csv \
	data/2016/CT.csv \
	data/2016/DC.csv \
	data/2016/DE.csv \
	data/2016/FL.csv \
	data/2016/GA.csv \
	data/2016/HI.csv \
	data/2016/IA.csv \
	data/2016/ID.csv \
	data/2016/IL.csv \
	data/2016/IN.csv \
	data/2016/KS.csv \
	data/2016/KY.csv \
	data/2016/LA.csv \
	data/2016/MA.csv \
	data/2016/MD.csv \
	data/2016/ME.csv \
	data/2016/MI.csv \
	data/2016/MN.csv \
	data/2016/MO.csv \
	data/2016/MS.csv \
	data/2016/MT.csv \
	data/2016/NC.csv \
	data/2016/ND.csv \
	data/2016/NE.csv \
	data/2016/NH.csv \
	data/2016/NJ.csv \
	data/2016/NM.csv \
	data/2016/NV.csv \
	data/2016/NY.csv \
	data/2016/OH.csv \
	data/2016/OK.csv \
	data/2016/OR.csv \
	data/2016/PA.csv \
	data/2016/PR.csv \
	data/2016/RI.csv \
	data/2016/SC.csv \
	data/2016/SD.csv \
	data/2016/TN.csv \
	data/2016/TX.csv \
	data/2016/UT.csv \
	data/2016/VA.csv \
	data/2016/VT.csv \
	data/2016/WA.csv \
	data/2016/WI.csv \
	data/2016/WV.csv \
	data/2016/WY.csv

all: \
	data/2016/AL.csv \
	data/2016/AK.csv \
	data/2016/AR.csv \
	data/2016/AZ.csv \
	data/2016/CA.csv \
	data/2016/CO.csv \
	data/2016/CT.csv \
	data/2016/DC.csv \
	data/2016/DE.csv \
	data/2016/FL.csv \
	data/2016/GA.csv \
	data/2016/HI.csv \
	data/2016/IA.csv \
	data/2016/ID.csv \
	data/2016/IL.csv \
	data/2016/IN.csv \
	data/2016/KS.csv \
	data/2016/KY.csv \
	data/2016/LA.csv \
	data/2016/MA.csv \
	data/2016/MD.csv \
	data/2016/ME.csv \
	data/2016/MI.csv \
	data/2016/MN.csv \
	data/2016/MO.csv \
	data/2016/MS.csv \
	data/2016/MT.csv \
	data/2016/NC.csv \
	data/2016/ND.csv \
	data/2016/NE.csv \
	data/2016/NH.csv \
	data/2016/NJ.csv \
	data/2016/NM.csv \
	data/2016/NV.csv \
	data/2016/NY.csv \
	data/2016/OH.csv \
	data/2016/OK.csv \
	data/2016/OR.csv \
	data/2016/PA.csv \
	data/2016/PR.csv \
	data/2016/RI.csv \
	data/2016/SC.csv \
	data/2016/SD.csv \
	data/2016/TN.csv \
	data/2016/TX.csv \
	data/2016/UT.csv \
	data/2016/VA.csv \
	data/2016/VT.csv \
	data/2016/WA.csv \
	data/2016/WI.csv \
	data/2016/WV.csv \
	data/2016/WY.csv
