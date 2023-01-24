import sqlite3

conn = sqlite3.connect('student.db')
print("Opened database successfully")

conn.execute('''CREATE TABLE STUDENT_MARKS (ID INT PRIMARY KEY NOT NULL, NAME TEXT NOT NULL, MARKS INT NOT NULL);''')
print("Table created successfully")

conn.execute("INSERT INTO STUDENT_MARKS (ID,NAME,MARKS) VALUES (1, 'Rohan', 500)");
conn.execute("INSERT INTO STUDENT_MARKS (ID,NAME,MARKS) VALUES (2, 'Rahul', 600)");
conn.execute("INSERT INTO STUDENT_MARKS (ID,NAME,MARKS) VALUES (3, 'Raj', 700)");
conn.execute("INSERT INTO STUDENT_MARKS (ID,NAME,MARKS) VALUES (4, 'Rajesh', 800)");
conn.execute("INSERT INTO STUDENT_MARKS (ID,NAME,MARKS) VALUES (5, 'Rakesh', 900)");

conn.commit()
print("Records created successfully")
conn.close()