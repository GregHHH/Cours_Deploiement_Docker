echo "list of executables files:" > exec_files_1.txt
for file in $(ls)
do
	if [ -x $file ]
	then
		echo $file >> exec_files_1.txt
	fi
done

wc -l $file