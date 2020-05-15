REM   Script: Session 02
REM   COMP 2605 EDS LAB 02




CREATE TABLE Department( 
    
	DeptNum NUMBER(3)    NOT NULL, 

    Dname   VARCHAR2(12) NOT NULL, 

    Loc     VARCHAR2(12) NOT NULL, 
   
 PRIMARY KEY(DeptNum)
 
);



INSERT INTO Department 
VALUES(10, 'Accounting', 'New York');


INSERT INTO Department(DeptNum, Dname, Loc) 
VALUES(20, 'Research', 'Dallas');


INSERT INTO Department 
VALUES(30, 'Sales', 'Chicago');


INSERT INTO Department(DeptNum, Dname, Loc) 
VALUES(40, 'Operations', 'Boston');



CREATE TABLE Employees( 
    
EmpNum      NUMBER(5)       NOT NULL, 

    Ename       VARCHAR2(15)    NOT NULL,
 
    Job         VARCHAR2(15)    NOT NULL, 

    Mgr         NUMBER(5), 
    Hiredate    DATE            NOT NULL,
 
    Sal         NUMBER(7,2)     NOT NULL, 

    Comm        NUMBER(7,2), 
  
  DeptNum     NUMBER(3), 
 
   PRIMARY KEY (EmpNum), 
  
  FOREIGN KEY (DeptNum) 
    REFERENCES Department(DeptNum) 

);



INSERT INTO Employees 
VALUES(7369, 'SMITH', 'CLERK', 7902, TO_DATE('17-DEC-1980', 'DD-MON-YYYY'), 800, NULL, 20);


INSERT INTO Employees 
VALUES(7566, 'JONES', 'MANAGER', 7839, TO_DATE('02-APR-1987', 'DD-MON-YYYY'), 1975, NULL, 20);


INSERT INTO Employees 
VALUES(4799, 'ALLEN', 'SALESMAN', 7698, TO_DATE('20-FEB-1981', 'DD-MON-YYYY'), 1600, 300, 30);


INSERT INTO Employees 
VALUES(7839, 'KING', 'PRESIDENT', NULL, TO_DATE('17-NOV-1981', 'DD-MON-YYYY'), 5000, NULL, 10);



CREATE TABLE Vendor
( 
  
  VendorId    VARCHAR2(5)     NOT NULL,
 
    VendorName  VARCHAR2(30)    NOT NULL, 
 
   PRIMARY KEY(VendorId) 

);



SELECT * FROM Department;


SELECT * FROM Employees;


SELECT * FROM Vendor;


SELECT (50+(100/20))-(-10) FROM DUAL;



create table mydepartment
(
 
deptno number(3) not null,
 
dname varchar2(12) not null,
 
loc varchar2(12) not null, 

primary key(deptno));


insert into mydepartment values(10,'Accounting','San Juan');


insert into mydepartment values(20,'Research','Arima');


insert into mydepartment values(30,'Sales','P.O.S');


insert into mydepartment values(40,'Operations','P.O.S');



create table myemployee
(
 
empno number(5) not null,
 
fname varchar2(10) not null,
 
lname varchar2(10) not null, 

jobtitle varchar2(10) not null,
 
mgr number(5),
 
hiredate date not null,
 
sal number(7,2) not null,
 
deptno number(3), 

address varchar2(15),
 
phone varchar2(8), 

primary key(empno),
 
foreign key(deptno) references mydepartment(deptno)
);



insert into myemployee values(7369,'JOAN','SMITH','CLERK',7902,to_date('17-DEC-1980','DD-MON-YYYY'),800,20,'ARIMA','667-2418');


insert into myemployee values(7499,'MIKE','ALLEN','SALESMAN',7782,to_date('20-FEB-1981','DD-MON-YYYY'),1600,30,'P.O.S','623-8787');


insert into myemployee values(7521,'DON','WARD','SALESMAN',7698,to_date('22-FEB-1981','DD-MON-YYYY'),1250,30,'CARENAGE','637-8934');


insert into myemployee values(7566,'ALAN','JONES','MANAGER',7839,to_date('02-APR-1981','DD-MON-YYYY'),31975,20,'SAN JUAN','667-2418');


insert into myemployee values(7654,'AL','MARTIN','SALESMAN',7698,to_date('28-SEP-1981','DD-MON-YYYY'),1250,30,'P.O.S','625-4576');


insert into myemployee values(7698,'DICK','BLAKE','MANAGER',7839,to_date('01-MAY-1981','DD-MON-YYYY'),31850,30,'SAN JUAN','675-8123');


insert into myemployee values(7782,'CARL','CLARK','MANAGER',7839,to_date('09-JUN-1981','DD-MON-YYYY'),31450,10,'SAN JUAN','674-0912');


insert into myemployee values(7788,'SUSAN','SCOTT','ANALYST',7566,to_date('19-APR-1987','DD-MON-YYYY'),3000,20,'ARIMA','667-3421');


insert into myemployee values(7839,'MARY','KING','PRESIDENT',NULL,to_date('17-NOV-1981','DD-MON-YYYY'),5000,10,'SAN JUAN','638-1624');


insert into myemployee values(7844,'TIM','TURNER','SALESMAN',7698,to_date('08-SEP-1981','DD-MON-YYYY'),1500,30,'MOVANT','624-8012');


insert into myemployee values(7876,'TERRY','ADAMS','CLERK',7788,to_date('23-MAY-1987','DD-MON-YYYY'),1100,20,'CARENAGE','632-0901');


insert into myemployee values(7900,'JILL','JAMES','CLERK',7698,to_date('03-DEC-1981','DD-MON-YYYY'),950,30,'ST.AUGUSTINE','662-1645');


insert into myemployee values(7902,'BETTY','FORD','ANALYST',7566,to_date('03-DEC-1981','DD-MON-YYYY'),3000,20,'ST.AUGUSTINE','645-2271');


insert into myemployee values(7934,'MARK','MILLER','CLERK',7782,to_date('23-JAN-1982','DD-MON-YYYY'),1300,10,'COUVA','636-1625');



SELECT empno, fname, lname, jobtitle, mgr, to_char(hiredate, 'DD-MON-YYYY'), sal, deptno, address, phone FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, to_char(hiredate, 'DD-MON-YYYY'), sal, deptno, address, phone FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, to_char(hiredate, 'DD-MON-YYYY'), sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, (hiredate, 'DD-MON-YYYY'), sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT (fname||' '||lname, hiredate) FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;


SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;


/*1*/SELECT (50+(100/20))-(-10) FROM DUAL;
 


/*2*/ DESCRIBE myEmployee;
 


/*3a*/SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;
 


/*3b*/SELECT * FROM myEmployee;
 


/*4*/SELECT fname||' '||lname, hiredate FROM myEmployee;
 


/*5*/SELECT deptNo FROM myEmployee;
 


/*6*/SELECT DISTINCT deptNo FROM myEmployee; 



/*1*/ SELECT (50+(100/20))-(-10) FROM DUAL;
 


/*2*/ DESCRIBE myEmployee;
 


/*3a*/ SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;
 


/*3b*/ SELECT * FROM myEmployee;
 


/*4*/ SELECT fname||' '||lname, hiredate FROM myEmployee;
 


/*5*/ SELECT deptNo FROM myEmployee; 



/*6*/ SELECT DISTINCT deptNo FROM myEmployee;

 


SELECT (50+(100/20))-(-10) FROM DUAL;


DESCRIBE myEmployee


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;


SELECT DISTINCT deptNo FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;


SELECT DISTINCT deptNo FROM myEmployee;

DESCRIBE myemployee


SELECT (50+(100/20))-(-10) FROM DUAL;


DESC myEmployee


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;


SELECT DISTINCT deptNo FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName as "FullName", jobtitle, sal FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal between 2500, 5000;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal between(2500, 5000);

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal between 2500 and 5000;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM MYeMPLOYEE WHERE mgr = NULL;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM MYeMPLOYEE WHERE mgr is NULL;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT * FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT * FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT * FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE hiredate <= 01-MAR-1981;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE hiredate <= '01-MAR-1981';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE hiredate <= '01-MAR-1981' and jobtitle = 'SALESMAN';

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fNname||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" FROM myEmployee;

SELECT * FROM myEmployee WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee WHERE jobtitle = 'SALESMAN' ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT 'The job title of Employee '||lName||' is '||jobtitle FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone 
    FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" 
    FROM myEmployee;

SELECT * FROM myEmployee 
    WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee 
    WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee 
    WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' 
        ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT 'The job title of Employee '||lName||' is '||jobtitle as "          " 
    FROM myEmployee;

SELECT INITCAP(fName)||' '||INITCAP(lName) as "Name", sal as "Salary" 
    FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone 
    FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" 
    FROM myEmployee;

SELECT * FROM myEmployee 
    WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee 
    WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee 
    WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' 
        ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT 'The job title of Employee '||lName||' is '||jobtitle as "          " 
    FROM myEmployee;

SELECT INITCAP(fName)||' '||INITCAP(lName) as "Name", sal as "Salary" 
    FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", NVL(mgr, 'No Manager') as "Manager" 
    FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone 
    FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" 
    FROM myEmployee;

SELECT * FROM myEmployee 
    WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee 
    WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee 
    WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' 
        ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT 'The job title of Employee '||lName||' is '||jobtitle as "          " 
    FROM myEmployee;

SELECT INITCAP(fName)||' '||INITCAP(lName) as "Name", sal as "Salary" 
    FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", NVL(to_char(mgr), 'No Manager') as "Manager" 
    FROM myEmployee;

SELECT (50+(100/20))-(-10) FROM DUAL;

SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone 
    FROM myEmployee;

SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;

SELECT deptNo FROM myEmployee;

SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" 
    FROM myEmployee;

SELECT * FROM myEmployee 
    WHERE jobTitle = 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE jobTitle like 'SALESMAN';

SELECT * FROM myEmployee 
    WHERE sal >= 2500 and sal <=5000;

SELECT * FROM myEmployee 
    WHERE sal BETWEEN 2500 and 5000;

SELECT * FROM myEmployee 
    WHERE mgr is NULL;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr IN(7698, 7839);

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' 
        ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;

SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;

SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;

SELECT 'The job title of Employee '||lName||' is '||jobtitle as "          " 
    FROM myEmployee;

SELECT INITCAP(fName)||' '||INITCAP(lName) as "Name", sal as "Salary" 
    FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", NVL(to_char(mgr), 'No Manager') as "Manager" 
    FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal *12 as "Annual Salary", DECODE( 
    jobtitle, 'CLERK', sal * 12 * 0.02, 
              'SALESMAN', sal * 12 * 0.10, 
              'MANAGER', sal * 12 * 0.15, 
              'ANALYST', sal * 12 * 0.05, 
              'PRESIDENT', sal * 12 * 0.20, 
              0) as "Annual Bonus" 
        FROM myEmployee;


SELECT (50+(100/20))-(-10) FROM DUAL;


SELECT empno, fname, lname, jobtitle, mgr, hiredate, sal, deptno, address, phone 
    FROM myEmployee;


SELECT * FROM myEmployee;

SELECT fname||' '||lname, hiredate FROM myEmployee;


SELECT deptNo FROM myEmployee;


SELECT DISTINCT deptNo FROM myEmployee;

SELECT fName||' '||lName, jobtitle, sal FROM myEmployee;


SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal as "Annual Salary" 
    FROM myEmployee;


SELECT * FROM myEmployee 
    WHERE jobTitle = 'SALESMAN';


SELECT * FROM myEmployee 
    WHERE jobTitle like 'SALESMAN';


SELECT * FROM myEmployee 
    WHERE sal >= 2500 and sal <=5000;


SELECT * FROM myEmployee 
    WHERE sal BETWEEN 2500 and 5000;


SELECT * FROM myEmployee 
    WHERE mgr is NULL;


SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr IN(7698, 7839);


SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE mgr = 7698 or mgr = 7839;

SELECT fName||' '||lName as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' and hiredate <= '01-MAR-1981';

SELECT fName||' '||lname as "Name" FROM myEmployee 
    WHERE jobtitle = 'SALESMAN' 
        ORDER BY fName desc, lName desc;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", hiredate as "Hire Date" 
    FROM myEmployee 
        ORDER BY jobtitle asc, hiredate desc;


SELECT fName||' '||lName as "Name", LENGTH(fName) + length(lName) as "Length" 
    FROM myEmployee;


SELECT fName, SUBSTR(fName, 1, 1) as "First" FROM myEmployee;


SELECT 'The job title of Employee '||lName||' is '||jobtitle as "          " 
    FROM myEmployee;


SELECT INITCAP(fName)||' '||INITCAP(lName) as "Name", sal as "Salary" 
    FROM myEmployee;


SELECT fName||' '||lName as "Name", jobtitle as "Job Title", NVL(to_char(mgr), 'No Manager') as "Manager" 
    FROM myEmployee;

SELECT fName||' '||lName as "Name", jobtitle as "Job Title", sal *12 as "Annual Salary", DECODE( 
    jobtitle, 'CLERK', sal * 12 * 0.02, 
              'SALESMAN', sal * 12 * 0.10, 
              'MANAGER', sal * 12 * 0.15, 
              'ANALYST', sal * 12 * 0.05, 
              'PRESIDENT', sal * 12 * 0.20, 
              0) as "Annual Bonus" 
        FROM myEmployee;

