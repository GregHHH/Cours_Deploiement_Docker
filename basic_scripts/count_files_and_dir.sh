echo "Number of executable files: " $(ls -l | grep ^-..x | wc -l)
echo "Total number of files: " $(ls -l | grep ^- | wc -l)
echo "Number of directories: " $(ls -l | grep ^d | wc -l)
