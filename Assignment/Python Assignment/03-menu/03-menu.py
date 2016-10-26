#Implement a python code for menu driven python code for arithmetic operations.

#!/usr/bin/python    
a=input("Enter 1st number")
b=input("Enter 2nd number")

def add(a,b):
	sum=int(a)+int(b)
	print(sum)

def sub(a,b):
	sub=int(a)-int(b)
	print(sub)
    

def mul(a,b):
	mul=int(a)*int(b)
	print(mul)
   

def div(a,b):
	div=int(a)/int(b)
	print(div)

menu = {}
menu['1']="Addition" 
menu['2']="Subtraction"
menu['3']="Multiplication"
menu['4']="Division"
menu['5']="Exit"
while True: 
  options=menu.keys()
 
  for entry in options: 
      print(entry, menu[entry])

  selection=input("Please Select:") 
  if selection =='1': 
      add(a,b) 
  elif selection == '2': 
      sub(a,b)
  elif selection == '3':
      mul(a,b)
  elif selection == '4':
      div(a,b)
  elif selection == '5': 
      break
  else: 
      print("Unknown Option Selected!") 


def add(a,b):
	sum=int(a)+int(b)
	print(sum)


