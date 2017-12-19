#!/bin/bash
echo "Written by https://github.com/dphilphil"

for folder in */; do
        cd $folder
        echo "$folder"

        #unhash as approriate
        #rm *bands *bib *castep *bin *esp *usp *out* *check *geom
        #rm *check
        cd ../
done
