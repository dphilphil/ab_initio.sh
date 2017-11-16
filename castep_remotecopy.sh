#!/bin/bash
#copies all except large binary checkpoints files
rsync -av --exclude='*.check' XXX@XXX.ac.uk:~/ .
