#!/bin/bash
echo "Written by https://github.com/dphilphil"

for folder in */; do
	cd $folder

	#search for warnings	
	if grep 'warn' *castep
	  then echo "Warning Found @ $folder" >> '../warnings.log'
	  else echo "Warning NotFound @ $folder" >> '../warnings.log'
	fi
	
	#-n prevents carriage return (new line)
	#-e allows escape characters to be read, used here to read \t as tab
	echo -ne "$folder \t" >> '../energies.log'	
	#grep finds line then pipe to awk to match word
	grep "Final energy, E" *castep | awk '{print $5}' >> '../energies.log'
	cd ../
done
