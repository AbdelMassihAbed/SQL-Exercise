 SELECT * from students
 SELECT * FROM students WHERE Age>30
 SELECT * FROM students WHERE Age=30 AND Gender="F"
 SELECT Points FROM students WHERE name='Alex'
 INSERT INTO students VALUES ('Abdelmasih', '26', 'M','500')
 UPDATE students SET Points=400 WHERE name='Basma'
 UPDATE students SET Points=190 WHERE name='Alex'

-----------------------------------------------
### Creating Table
 #CREATE TABLE "graduated" (
        "ID"    INTEGER NOT NULL,
        "Name"  TEXT NOT NULL UNIQUE,
        "Age"   INTEGER,
        "Gender"        TEXT,
        "Points"        INTEGER,
        "Graduation"    TEXT,
        PRIMARY KEY("ID" AUTOINCREMENT)
	
 INSERT INTO graduated (name,Age,Gender,Points) SELECT name,Age,gender,Points FROM students WHERE name="Layal";

 UPDATE graduated SET Graduation="08/09/2018" WHERE name="Layal";
 DELETE FROM students WHERE name="layal";

------------------------------------------------

### Joins
 SELECT employees.Name, employees.Company, companies.Date FROM employees INNER JOIN companies ON companies.Name=employees.Company;

 SELECT employees.name FROM employees INNER JOIN companies ON employees.Company=companies.Name
 WHERE companies.Date<2000

 SELECT companies.Name From companies INNER JOIN employees ON employees.Company=companies.Name WHERE Role="Graphic Designer";

 ### Count & Filter
 SELECT * FROM students WHERE Points=(SELECT max(Points) FROM students)
 SELECT avg(Points) FROM students; 
 SELECT count(ID) FROM students WHERE Points="500";
 SELECT Name FROM students WHERE Name like '%s%'
 SELECT * FROM students ORDER BY Points DESC
