#Implement a shell script to check a protein file(download a protein file). Check whether a sequence is present in the file or not.[

#!/bin/sh

#https://www.researchgate.net/post/How_to_download_a_protein_sequence_in_fasta_format
#http://www.rcsb.org/pdb/home/home.do
#http://www.rcsb.org/pdb/results/results.do?tabtoshow=Current&qrid=D99E6F98
#http://www.rcsb.org/pdb/ngl/ngl.do?pdbid=5IPO



sequence=$(grep -A 5 SEQUENCE 5ipo.fasta.txt)

if [ -n "$sequence" ]; then
echo "Sequence is present"
else 
echo "No sequence is found"
fi


