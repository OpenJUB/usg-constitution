for file in `ls ../constitution/*.tex`; do
	echo "processing file $file..."
	sed -i 's/\\added\[id=P\]{/\\add\[P\]{/' $file
	sed -i 's/\\added\[id=S\]{/\\add\[S\]{/' $file
	sed -i 's/\\added\[id=N\]{/\\add\[N\]{/' $file
	sed -i 's/\\deleted\[id=P\]{/\\remove\[P\]{/' $file
	sed -i 's/\\deleted\[id=S\]{/\\remove\[S\]{/' $file
	sed -i 's/\\deleted\[id=N\]{/\\remove\[N\]{/' $file
done
