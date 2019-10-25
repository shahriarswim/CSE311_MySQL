-- creating Employees table
CREATE TABLE Employees(
	Employee_id INT(6) PRIMARY	KEY NOT NULL, -- It is a primary key and cannot be left blank(NULL)
	First_name VARCHAR(20),
    Last_name VARCHAR(25) NOT NULL,
    Email VARCHAR(25) NOT NULL,
    Phone_number VARCHAR(20),
    Hire_date DATE NOT NULL,
    Job_id VARCHAR(10) NOT NULL,
    Salary DOUBLE(8,2),
    Commission_pct DOUBLE(2,2),
    Manager_id INT(6),
    Department_id INT(4)
);


-- select all from a table (you can check if your table is created or not)
SELECT * FROM Employees;

-- inserting data into table
INSERT INTO Employees VALUES(100, 'Steven','King', 'SKING','515.123.4567', '2007-05-02', 'AD_PRES',24000, NULL, NULL, 90);
INSERT INTO Employees VALUES(101, 'Neena','Kochar', 'NKOCHAR','515.123.4568', '2016-05-02', 'AD_VP',17000, NULL, 100, 90);
INSERT INTO Employees VALUES(102, 'Lex','De Haan', 'DEHAAN','515.123.4569', '2013-05-02', 'AD_VP',17000, NULL, 100, 90);
INSERT INTO Employees VALUES(103, 'Alexander','Hunold', 'AHUNOLD','590.423.4567', '2008-05-02', 'IT_PROG',9000,NULL, 102, 60);
INSERT INTO Employees VALUES(104, 'Bruce','Ernst', 'BERNST','590.423.4568', '2009-05-02', 'IT_PROG',6000,NULL, 103, 60);
INSERT INTO Employees VALUES(107, 'Diana','Lorentz', 'DLORENTZ','590.423.5567', '2011-05-02', 'IT_PROG',4200,NULL, 103, 60);
INSERT INTO Employees VALUES(124, 'Kevin','Mourgos', 'KMORGOS','650.123.5234', '2017-05-02', 'ST_MAN',5800,NULL, 100, 50);
INSERT INTO Employees VALUES(141, 'Treena','Rajs', 'RRAJS','650.121.5234', '2016-05-02', 'ST_CLERK',3500,NULL, 124, 50);
INSERT INTO Employees VALUES(142, 'Curtis','Davies', 'CDAVIES','121.123.5234', '2014-05-02', 'ST_CLERK',3100,NULL, 124, 50);
INSERT INTO Employees VALUES(143, 'Randall','Matos', 'RMATOS','121.123.5234', '2012-05-02', 'ST_CLERK',2600,NULL, 124, 50);
INSERT INTO Employees VALUES(144, 'Peter','Vargas', 'PVARGAS','121.123.5234', '2015-05-02', 'ST_CLERK',2500,NULL, 124, 50);
INSERT INTO Employees VALUES(149, 'Eleni','Zlotkey', 'EZLOTKEY','44.1344.429018', '2010-05-02', 'SA_MAN',10500,.2, 100, 80);
INSERT INTO Employees VALUES(174, 'Ellen','Abel', 'EABEL','44.1644.429017', '2009-05-02', 'SA_REP',11000,.3, 149, 80);
INSERT INTO Employees VALUES(176, 'Jnathon','Taylor', 'JTAILOR','44.1644.429021', '2008-05-02', 'SA_MAN',8600,.2, 149, 80);
INSERT INTO Employees VALUES(178, 'Kimberely','Grant', 'KGRANT','44.1644.429023', '2007-05-02', 'SA_MAN',7000,.15, 149, NULL);
INSERT INTO Employees VALUES(200, 'Jennifer','Whalem', 'JWHALEN','515.123.4444', '2005-05-02', 'AD_ASST',4400,NULL, 101, 10);
INSERT INTO Employees VALUES(201, 'Michael','Hartstein', 'MHARSTEIN','515.123.5555', '2018-05-02', 'MK_MAN',13000,NULL, 100, 20);
INSERT INTO Employees VALUES(202, 'Pat','Fay','PFAY','603.123.6666', '2008-05-02', 'MK_REP',6000,NULL, 201, 20);
INSERT INTO Employees VALUES(205, 'Shelley','Higgins', 'SHIGGINS','515.123.8050', '2008-05-02', 'AC_MGR',12000,NULL, 101, 110);
INSERT INTO Employees VALUES(206, 'William','Gietz', 'WGIETZ','515.123.8181', '2007-05-02', 'AC_ACCOUNT',8300,NULL, 205, 110);

-- select all from a table (you can check if your data is inserted or not)
SELECT * FROM Employees;

-- creating Department table
CREATE TABLE Departments(
	Department_id INT(4) PRIMARY KEY NOT NULL,
    Department_name VARCHAR(30) NOT NULL,
    Manager_id INT(6),
    Location_id INT(4)
);

-- select all from a table (you can check if your table is created or not)
SELECT * FROM Departments;

-- inserting data into table
INSERT INTO Departments VALUES(10, 'Administration',200,1700);
INSERT INTO Departments VALUES(20, 'Marketing',201,1800);
INSERT INTO Departments VALUES(50, 'Shipping',124,1500);
INSERT INTO Departments VALUES(60, 'IT',103,1400);
INSERT INTO Departments VALUES(80, 'Sales',149,2500);
INSERT INTO Departments VALUES(90, 'Executive',100,1700);
INSERT INTO Departments VALUES(110, 'Accounting',205,1700);
INSERT INTO Departments VALUES(190, 'Contracting',NULL,1700);

-- select all from a table (you can check if your data is inserted or not)
SELECT * FROM Departments;
