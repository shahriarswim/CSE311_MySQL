CREATE DATABASE employee_informaton;

CREATE TABLE Employees(
Employee_Id INT(6) PRIMARY KEY,
First_Name VARCHAR(20),
Last_Name VARCHAR(25) NOT NULL,
Email VARCHAR(25) NOT NULL,
Phone_Number VARCHAR(15),
Hire_Date DATE NOT NULL,
Job_Id VARCHAR(10) NOT NULL,
Salary DOUBLE(8,2),
Commission_pct DOUBLE(2,2),
Manager_id INT(6),
Department_Id INT(4));


INSERT INTO Employees VALUES(100, 'Steven','King', 'SKING','515.123.4567', '2006-06-17', 'AD_PRES',24000, NULL, NULL, 90);
INSERT INTO Employees VALUES(101, 'Neena','Kochar', 'NKOCHAR','515.123.4568', '2008-09-21', 'AD_VP',17000, NULL, 100, 90);
INSERT INTO Employees VALUES(102, 'Lex','De Haan', 'DEHAAN','515.123.4569', '2009-01-13', 'AD_VP',17000, NULL, 100, 90);
INSERT INTO Employees VALUES(103, 'Alexander','Hunold', 'AHUNOLD','590.423.4567', '2008-01-03', 'IT_PROG',9000,NULL, 102, 60);
INSERT INTO Employees VALUES(104, 'Bruce','Ernst', 'BERNST','590.423.4568', '2009-05-21', 'IT_PROG',6000,NULL, 103, 60);
INSERT INTO Employees VALUES(107, 'Diana','Lorentz', 'DLORENTZ','590.423.5567', '2008-02-07', 'IT_PROG',4200,NULL, 103, 60);
INSERT INTO Employees VALUES(124, 'Kevin','Mourgos', 'KMORGOS','650.123.5234', '2012-11-16', 'ST_MAN',5800,NULL, 100, 50);
INSERT INTO Employees VALUES(141, 'Treena','Rajs', 'RRAJS','650.121.5234', '2017-10-17', 'ST_CLERK',3500,NULL, 124, 50);
INSERT INTO Employees VALUES(142, 'Curtis','Davies', 'CDAVIES','121.123.5234', '2007-01-07', 'ST_CLERK',3100,NULL, 124, 50);
INSERT INTO Employees VALUES(143, 'Randall','Matos', 'RMATOS','121.123.5234', '2008-05-15', 'ST_CLERK',2600,NULL, 124, 50);
INSERT INTO Employees VALUES(144, 'Peter','Vargas', 'PVARGAS','121.123.5234', '2008-07-09', 'ST_CLERK',2500,NULL, 124, 50);
INSERT INTO Employees VALUES(149, 'Eleni','Zlotkey', 'EZLOTKEY','44.1344.429018', '2014-01-29', 'SA_MAN',10500,.2, 100, 80);
INSERT INTO Employees VALUES(174, 'Ellen','Abel', 'EABEL','44.1644.429017', '2004-05-11', 'SA_REP',11000,.3, 149, 80);
INSERT INTO Employees VALUES(176, 'Jnathon','Taylor', 'JTAILOR','44.1644.429021', '2008-03-24', 'SA_MAN',8600,.2, 149, 80);
INSERT INTO Employees VALUES(178, 'Kimberely','Grant', 'KGRANT','44.1644.429023', '2009-05-24', 'SA_MAN',7000,.15, 149, NULL);
INSERT INTO Employees VALUES(200, 'Jennifer','Whalem', 'JWHALEN','515.123.4444', '2003-09-05', 'AD_ASST',4400,NULL, 101, 10);
INSERT INTO Employees VALUES(201, 'Michael','Hartstein', 'MHARSTEIN','515.123.5555', '2008-02-17', 'MK_MAN',13000,NULL, 100, 20);
INSERT INTO Employees VALUES(202, 'Pat','Fay','PFAY','603.123.6666', '2010-08-07', 'MK_REP',6000,NULL, 201, 20);
INSERT INTO Employees VALUES(205, 'Shelley','Higgins', 'SHIGGINS','515.123.8050', '2007-06-17', 'AC_MGR',12000,NULL, 101, 110);
INSERT INTO Employees VALUES(206, 'William','Gietz', 'WGIETZ','515.123.8181', '2007-06-07', 'AC_ACCOUNT',8300,NULL, 205, 110);

SELECT * FROM Employees;



CREATE TABLE Departments(
Department_id INT(4) PRIMARY KEY,
Department_Name VARCHAR(30) NOT NULL,
Manager_id INT(6),
Location_id INT(4)
);



INSERT INTO Departments VALUES(10, 'Administration',200,1700);
INSERT INTO Departments VALUES(20, 'Marketing',201,1800);
INSERT INTO Departments VALUES(50, 'Shipping',124,1500);
INSERT INTO Departments VALUES(60, 'IT',103,1400);
INSERT INTO Departments VALUES(80, 'Sales',149,2500);
INSERT INTO Departments VALUES(90, 'Executive',100,1700);
INSERT INTO Departments VALUES(110, 'Accounting',205,1700);
INSERT INTO Departments VALUES(190, 'Contracting',NULL,1700);

SELECT * FROM Departments;


CREATE TABLE Locations(
Location_id INT(4) PRIMARY KEY,
Street_Address VARCHAR(40),
Postal_Code VARCHAR(12),
City VARCHAR(30) NOT NULL,
State_Province VARCHAR(25),
Country_ID CHAR(2)
);


INSERT INTO Locations VALUES(1400, '2014 Jabberwocky Rd','26192','Southlake', 'Texas', 'US');
INSERT INTO Locations VALUES(1500, '2011 Interiors Blvd','99236','South San Francisco', 'California', 'US');
INSERT INTO Locations VALUES(1700, '2004 Charade Rd','98199', 'Seattle','Washington', 'US');
INSERT INTO Locations VALUES(1800, '460 Bloor St. W.','ON M5S 1X8', 'Toronto','Ontario', 'CA');
INSERT INTO Locations VALUES(2500, 'Magdalen Centre- The Oxford Sc. Park','OX9 9ZB', 'OXford','Oxford', 'UK');

SELECT * FROM Locations;

CREATE TABLE Jobs(
job_id VARCHAR(10) PRIMARY KEY,
job_title VARCHAR(35),
min_salary INT(6),
max_salary INT(6)
);


INSERT INTO JOBS VALUES('AD_PRES', 'President',20000,40000);
INSERT INTO JOBS VALUES('AD_VP', 'Administration Vice President',15000, 30000);
INSERT INTO JOBS VALUES('AD_ASST', 'Administration Assistant',3000, 6000);
INSERT INTO JOBS VALUES('AC_MGR', 'Account Manager',8200, 16000);
INSERT INTO JOBS VALUES('AC_ACCOUNT', 'Public Accountant',4200,9000);
INSERT INTO JOBS VALUES('SA_MAN', 'Sales Manager',10000, 20000);
INSERT INTO JOBS VALUES('SA_REP', 'Sales Representative',6000, 12000);
INSERT INTO JOBS VALUES('ST_MAN', 'Stock Manager',5500, 8500);
INSERT INTO JOBS VALUES('ST_CLERK', 'Stock Clerk',2000, 5000);
INSERT INTO JOBS VALUES('IT_PROG', 'Programmer',4000, 10000);
INSERT INTO JOBS VALUES('MK_MAN', 'Marketing Manager',9000, 15000);
INSERT INTO JOBS VALUES('MK_REP', 'Marketing Representative',4000, 9000);

SELECT * FROM Jobs;


-- Activity 01

SELECT Last_Name, ROUND((Salary*7)/30, 2) AS 'Weekly_Salary', Department_Id
FROM Employees;

-- Activity 02

SELECT CONCAT(Last_Name, ", ", Job_Id)
AS Employee_And_Title
FROM Employees;
