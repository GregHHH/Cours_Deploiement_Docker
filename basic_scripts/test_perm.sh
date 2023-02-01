for file in $(ls)
do
	if [ -x $file ]
	then
		echo $file
	fi
done
