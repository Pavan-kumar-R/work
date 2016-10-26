#!/user/bin/python2	
import MySQLdb

print "MENU"
print "1.Create table"	
print "2.Insert values"
print "3.Delete values"
print "4.update values"
print "5.truncate table"
print "6.quit"
option=int(input("enter the option :"))
def create():
 try:
  dbname=raw_input("enter the database name : ")
  uname=raw_input("enter the user Id  : ")
  passdb=raw_input("enter the passwd  : ")
  db= MySQLdb.connect(host="localhost",user=uname,passwd=passdb,db=dbname)
  print "connection established"
  cur=db.cursor()
  sql="""create table BookStore( SerialID varchar(20) primary key, BookName varchar(20) not null, ISBN varchar(20) not null, Publisher varchar(20) not null, yearpublished int(20) not null)"""
  a=cur.execute(sql)
  print a
  #print("successfully created")
  if(a==0):
   print "Successfully created"
  db.close()
  #except Exception,e:
  #print(e)
  #print("invalid combination of db name,user id and password")
 except Exception,e:
  print e
  #print("table is already present in database")  

def insert():
 try:
  dbname=raw_input("enter the database name : ")
  uname=raw_input("enter the user Id  : ")
  passdb=raw_input("enter the passwd  : ")
  db= MySQLdb.connect(host="localhost",user=uname,passwd=passdb,db=dbname)
  print "connection established"
  cur=db.cursor()
  id1=raw_input("enter the id of the book: ")
  name=raw_input("enter the name of the book: ")
  isbn=raw_input("enter the ISBN of the book: ")
  pub=raw_input("enter the Publisher of the book: ") 
  year=raw_input("enter the year the book was published: ")
  cur.execute("""insert into BookStore(serialID,BookName,ISBN,Publisher,yearpublished) values(%s,%s,%s,%s,%s)""",(id1,name,isbn,pub,year))
  db.commit()
  #if(a>0):
  print("Successfully inserted")
  db.close()
 except Exception,e:
  print e
  #print("USE UNIQUE ID FOR BOOKS")

def delete():
 try:
  dbname=raw_input("enter the database name : ")
  uname=raw_input("enter the user Id  : ")
  passdb=raw_input("enter the passwd  : ")
  db= MySQLdb.connect(host="localhost",user=uname,passwd=passdb,db=dbname)
  print "connection established"
  cur=db.cursor()
  print "Table or One row"
  option=int(raw_input("1 for  complete Table and 2 for row: "))
  if(option==1):
   cur.execute("""drop table BookStore""")
   db.commit()
   db.close()
  elif(option==2):
   cur.execute("""select * from BookStore""")
   result=cur.fetchall()
   for row in result:
    id1=row[0]
    name=row[1]
    isb=row[2]
    pub=row[3]
    year=row[4]
    print id1,name,isb,pub,year

  item=raw_input("enter the id of the book to delete: ")
  query='delete from BookStore where serialID='+item
  cur.execute(query.format(item))
  db.commit()
  print "Successfully deleted"
    
 except Exception,e:
  print e
    
  db.close()

def update():
 try:
  dbname=raw_input("enter the database name : ")
  uname=raw_input("enter the user Id  : ")
  passdb=raw_input("enter the passwd  : ")
  db= MySQLdb.connect(host="localhost",user=uname,passwd=passdb,db=dbname)
  print("connection established")
  cur=db.cursor()
  print "serialID\tBookName\tISBN\tPublisher\tyearpublished"
  cur.execute("""select * from BookStore""")
  result=cur.fetchall()
  for row in result:
   id1=row[0]
   name=row[1]
   isb=row[2]
   pub=row[3]
   year=row[4]
   print id1,"\t\t",name,"\t\t",isb,"\t",pub,"\t\t",year
  
 
  item=raw_input("enter the field you want to update except serialID: ")
  item2=raw_input("enter the new value: ")
  item3=raw_input("enter the serial id of the book you want to update: ")
  query='update BookStore set'+item+'='+item2+'where serialID='+item3
  cur.execute(query.format(item,item2,item3))
  db.commit()
  print "Successfully updated"

 except Exception,e:
  print e

  db.close()

def truncate():
  try:
   dbname=raw_input("enter the database name : ")
   uname=raw_input("enter the user Id  : ")
   passdb=raw_input("enter the passwd  : ")
   db= MySQLdb.connect(host="localhost",user=uname,passwd=passdb,db=dbname)
   print("connection established")
   cur=db.cursor()
   cur.execute("""truncate table BookStore""")
   db.commit()
   print "Successfully complete data is deleted"
  
  except Exception,e:
   print e

  db.close()


 

if(option==1):
   create()
elif(option==2):
   insert()
elif(option==3):
   delete()
elif(option==4):
   update()
elif(option==5):
   truncate()
elif(option==6):
   print("Successfully terminated")
else:
   print("invalid choice")
 


 #except Exception:
 #print(e)
 #print("failed to connect to database")