#ipconfig getifaddr en0 

IP=10.93.163 #.206
start=`date +%s`

for i in {0..254}
do
	if ping -q -W 1 -c 1 $IP.$i  #| grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> online_host.txt
	then
		echo $IP.$i >> online_host.txt
	else
		echo $IP.$i >> offline_host.txt
	fi
done
echo $(wc -l online_host.txt offline_host.txt)

end=`date +%s`
runtime=$((end-start))