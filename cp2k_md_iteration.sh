#!/bin/bash

echo "Written by https://github.com/dphilphil"

for (( it=1; it<=200; it++ )) #iterations
do
  t=$(echo "$it*0.500000" | bc) #time = iteration* timestep (ts=0.500000 here)
  grep -rnw *.ener -e "$t" | tail -1    #Grab last line. Head -1 grabs top line
done
