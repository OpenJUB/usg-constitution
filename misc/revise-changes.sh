#!/bin/bash
search='\\note\[.*?\]\{|\\annote\[.*?\]\{|\\add\[.*?\]\{|\\remove\[.*?\]\{|\\change\[.*?\]\{'
search_command="grep -PiRl --include=*.tex $search ../constitution/"
files=$($search_command)
for file in $files; do
	echo "processing file $file..."
	python trackchanges.py "$file"
done
