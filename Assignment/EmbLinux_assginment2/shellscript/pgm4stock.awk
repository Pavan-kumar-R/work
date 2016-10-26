#Assuming there is a file with a stock sale with fields ITEM, QTY, PRICEPERITEM. Assume the user input is the item and qty, Calculate the total cost of the purchase of an user.

#$ cat book-calculation.awk
BEGIN {
	total=0;
}
{
	#itemno=$1;
	book=$1;
	bookamount=$2*$3;
	total=total+bookamount;
	print "$"bookamount;
}
END {
	print "Total Amount = $"total;
}
