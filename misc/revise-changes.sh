#!/bin/bash

for file in `ls ../constitution/*.tex`; do
	echo "processing file $file..."
	python trackchanges.py "$file"
done
