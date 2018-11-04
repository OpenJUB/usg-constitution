for file in `ls ../constitution/*.tex`; do
	echo "processing file $file..."
	sed -i "s/$1/$2/" $file
done
