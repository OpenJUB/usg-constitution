for file in `ls *.tex`; do
	echo "processing file $file..."
	sed -i 's/\\add\[P\]{/\\added\[id=P\]{/' $file
	sed -i 's/\\add\[S\]{/\\added\[id=S\]{/' $file
	sed -i 's/\\add\[N\]{/\\added\[id=N\]{/' $file
	sed -i 's/\\remove\[P\]{/\\deleted\[id=P\]{/' $file
	sed -i 's/\\remove\[S\]{/\\deleted\[id=S\]{/' $file
	sed -i 's/\\remove\[N\]{/\\deleted\[id=N\]{/' $file
done
