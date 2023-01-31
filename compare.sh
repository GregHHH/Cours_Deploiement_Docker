for var in "$@"
do	
	if [ $var -gt 5 ]
	then
		echo "$var est plus grand que 5"
	elif [ $var -lt 5 ]
	then
		echo "$var est plus petit que 5"
	else
		echo "$var est égal à 5"
	fi
done