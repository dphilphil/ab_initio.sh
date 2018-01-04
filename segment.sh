#!/bin/bash

#user input
infile="XX"
allot="3"

lines=$(wc -l < $infile)
#second $infile is the output-prefix
split -l $(($lines/$allot)) --numeric-suffixes $infile $infile
