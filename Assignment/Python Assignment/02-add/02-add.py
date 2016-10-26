#Implement a python code to add 3 numbers using a) CLA b) CLI c) LIST d) DICTIONARY e)LAMDA FUNCTION f) NORMAL FUNCTION g) * args h) **kwargs

#!/usr/bin/python

import sys

sum=(int)(sys.argv[1])+(int)(sys.argv[2])+(int)(sys.argv[2])
print(sum)
num1=input('Enter 1st number')
num2=input('Enter 2nd number')
num3=input('Enter 3rd number')
sum1=(int)(num1)+(int)(num2)+(int)(num3)
print(sum1)

list=[3,3,3]
sum2=list[0]+list[1]+list[2]
print('The result of list is ',sum2)

dict={'1st':'3','2nd':'3','3rd':'3'}
sum3=int(dict['1st'])+int(dict['2nd'])+int(dict['3rd'])
print('The result of dictionary is',sum3)

def f(num1,num2,num3):
	return (int)(num1)+(int)(num2)+(int)(num3)
print('The result of lambda is',f(num1,num2,num3))

def add(num1,num2,num3):
	return (int)(num1)+(int)(num2)+(int)(num3)
sum4=add(num1,num2,num3)
print('The result of normal function is',sum4)

def add_args(f_arg, *argv):
	sum5=f_arg
	for arg in argv:
		sum5=sum5+int(arg)	       
	print('The result of args is',sum5)
res=add_args(3,3,3)

def add_kwargs(**kwargs):
	sum6=0
	for key, value in kwargs.items():
		sum6=sum6+int(value)		
	print('The result of kwargs',sum6)

add_kwargs(a=3,b=3,c=3)
	


