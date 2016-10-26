#Implement a python code to find a) word count b) aplhabet count c) uppercase charaters d)lowercase chararacters for a given file “sample.txt”.

import string
import re
MyFile=open('sample.txt','r')
words={}
count=0
chars = 0
uc = 0
lc =0
pattern = re.compile("[a-zA-Z]")

for i, line in enumerate(open('sample.txt')):
    for match in re.finditer(pattern, line):
	chars+=1
print("B:number of alphabets",chars)
       
for x in MyFile.read().split():
    count+=1

   

print ("A:number of words",count)
pattern1 = re.compile("[A-Z]")
for i, line in enumerate(open('sample.txt')):
    for match in re.finditer(pattern1, line):
	uc+=1
print("C:Uppercase characters",uc)

pattern2 = re.compile("[a-z]")
for i, line in enumerate(open('sample.txt')):
    for match in re.finditer(pattern2, line):
	lc+=1
print("D:Lowercase characters",lc)

MyFile.close()


