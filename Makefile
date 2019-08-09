data/2018/2018del.zip:
	mkdir -p data/2018
	curl -o data/2018/2018del.zip https://www.fhwa.dot.gov/bridge/nbi/2018del.zip
	unzip data/2018/2018del.zip -d data/2018

data/2018/%.csv: data/2018/2018del.zip
	python bridge_inventory_parser.py $(subst .csv,18.TXT,$@) $@

clean:
	rm -f \
	data/2018/AL.csv \
	data/2018/AK.csv \
	data/2018/AR.csv \
	data/2018/AZ.csv \
	data/2018/CA.csv \
	data/2018/CO.csv \
	data/2018/CT.csv \
	data/2018/DC.csv \
	data/2018/DE.csv \
	data/2018/FL.csv \
	data/2018/GA.csv \
	data/2018/HI.csv \
	data/2018/IA.csv \
	data/2018/ID.csv \
	data/2018/IL.csv \
	data/2018/IN.csv \
	data/2018/KS.csv \
	data/2018/KY.csv \
	data/2018/LA.csv \
	data/2018/MA.csv \
	data/2018/MD.csv \
	data/2018/ME.csv \
	data/2018/MI.csv \
	data/2018/MN.csv \
	data/2018/MO.csv \
	data/2018/MS.csv \
	data/2018/MT.csv \
	data/2018/NC.csv \
	data/2018/ND.csv \
	data/2018/NE.csv \
	data/2018/NH.csv \
	data/2018/NJ.csv \
	data/2018/NM.csv \
	data/2018/NV.csv \
	data/2018/NY.csv \
	data/2018/OH.csv \
	data/2018/OK.csv \
	data/2018/OR.csv \
	data/2018/PA.csv \
	data/2018/PR.csv \
	data/2018/RI.csv \
	data/2018/SC.csv \
	data/2018/SD.csv \
	data/2018/TN.csv \
	data/2018/TX.csv \
	data/2018/UT.csv \
	data/2018/VA.csv \
	data/2018/VT.csv \
	data/2018/WA.csv \
	data/2018/WI.csv \
	data/2018/WV.csv \
	data/2018/WY.csv

states: \
	data/2018/AL.csv \
	data/2018/AK.csv \
	data/2018/AR.csv \
	data/2018/AZ.csv \
	data/2018/CA.csv \
	data/2018/CO.csv \
	data/2018/CT.csv \
	data/2018/DC.csv \
	data/2018/DE.csv \
	data/2018/FL.csv \
	data/2018/GA.csv \
	data/2018/HI.csv \
	data/2018/IA.csv \
	data/2018/ID.csv \
	data/2018/IL.csv \
	data/2018/IN.csv \
	data/2018/KS.csv \
	data/2018/KY.csv \
	data/2018/LA.csv \
	data/2018/MA.csv \
	data/2018/MD.csv \
	data/2018/ME.csv \
	data/2018/MI.csv \
	data/2018/MN.csv \
	data/2018/MO.csv \
	data/2018/MS.csv \
	data/2018/MT.csv \
	data/2018/NC.csv \
	data/2018/ND.csv \
	data/2018/NE.csv \
	data/2018/NH.csv \
	data/2018/NJ.csv \
	data/2018/NM.csv \
	data/2018/NV.csv \
	data/2018/NY.csv \
	data/2018/OH.csv \
	data/2018/OK.csv \
	data/2018/OR.csv \
	data/2018/PA.csv \
	data/2018/PR.csv \
	data/2018/RI.csv \
	data/2018/SC.csv \
	data/2018/SD.csv \
	data/2018/TN.csv \
	data/2018/TX.csv \
	data/2018/UT.csv \
	data/2018/VA.csv \
	data/2018/VT.csv \
	data/2018/WA.csv \
	data/2018/WI.csv \
	data/2018/WV.csv \
	data/2018/WY.csv

nation: states
	head -n 1 data/2018/AK.csv >> data/2018/nationwide.csv
	tail -q -n +2 data/2018/[A-Z][A-Z].csv >> data/2018/nationwide.csv
