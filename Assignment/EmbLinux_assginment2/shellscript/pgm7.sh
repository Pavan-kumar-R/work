#Implement a shell script to find the hostname, disk used, disk free, linux kernel and variant as a menu driven program.

echo "Enter the option"
read option
case "$option" in
	
	"1") hostname
	echo "Above is hostname"
	;;
	"2") df
	echo "Disk used"
	;;
	"3") df -h
	echo "Disk free"
	;;
	"4") uname -o
	echo "Linux kernel name"
	;;
	"5") uname -r
	echo "Linux kernel version"
	;;
esac
