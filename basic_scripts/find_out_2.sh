echo "Number of executable files: " $(ls -l | grep ^-..x | wc -l) > exec_files_2.txt
echo "------------------" >> exec_files_2.txt
echo "Number of non executable files: " $(ls -l | grep ^...- | wc -l)	>> exec_files_2.txt
echo "------------------" >> exec_files_2.txt
echo "Total number of files: " $(ls -l | grep ^- | wc -l)	>> exec_files_2.txt
echo "------------------" >> exec_files_2.txt
echo "Number of directories: " $(ls -l | grep ^d | wc -l) >> exec_files_2.txt
