#Implement a python code to say “Hello <name>.The name is passed from the user as a) CLA b) CLI
import sys
name=input('Enter your name')
print('Hello',name)
print('Hello',sys.argv[1])

