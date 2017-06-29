#!/bin/bash
echo "Written by https://github.com/dphilphil"

#atom positions
x=60
y=1

#\ are spaces	
grep -E "Li" *.castep | grep -E "\ $x \ " | grep -E "x" | awk '{print $2","$4","$5","$6}' >> 'atoms.csv'
grep -E "N"  *.castep | grep -E "\ $y \ " | grep -E "x" | awk '{print $2","$4","$5","$6}' >> 'atoms.csv'
#energy	
grep "Final energy, E" *.castep | awk '{print $5}' >> 'atoms.csv'
