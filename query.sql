Create Database company;

USE company;

create table employee(
ID int NOT NULL auto_increment primary KEY, 
Name varchar(30) NOT NULL,
Address varchar(100) NOT NULL,
City varchar(50) NOT NULL, 
Age int NOT NULL,
DOB date NOT NULL, 
Profile varchar(50) NOT NULL,  
Salary decimal(15,2) NOT NULL,
Email varchar(50) NOT NULL, 
Mobile varchar(10) NOT NULL
) 

select * from employee;
Alter table employee
ADD message varchar(200);
 
 insert into employee(Name, Address, City, Age, DOB, Profile, Salary, Email, Mobile) values('Roshan', 'Greater Noida', 'Delhi', '26', '1995-02-18', 'Software Tester', '25000', 'rk74260@gmail.com', '8527152781');
 insert into employee(Name, Address, City, Age, DOB, Profile, Salary, Email, Mobile) values('Ronak', 'Noida', 'Delhi', '26', '1997-02-28', 'Software Developer', '35000', 'sk74260@gmail.com', '9527152781');
 insert into employee(Name, Address, City, Age, DOB, Profile, Salary, Email, Mobile) values('Sonika', 'Greater Noida', 'Pune', '21', '2000-07-28', 'Software Developer', '25000', 'sonika@gmail.com', '6527157781');

select name, City, Mobile from employee;

SELECT Name, Mobile
FROM employee 
Where Profile = "Software Tester";

select Name, Mobile, Profile, Salary 
FROM employee 
Where Age>25;

UPDATE employee
SET Address = 'Alpha 2, F block'
Where ID=1; 

UPDATE employee
SET Name = 'Arohi'
Where ID=1; 

UPDATE employee
SET Salary = '40000'
Where ID=3; 

DELETE FROM employee
where ID=2;

DELETE FROM employee;

SELECT ID, Name
FROM employee
WHERE Profile = 'Software Developer' AND Age>20;

SELECT ID, Name
FROM employee
WHERE Profile = 'Software Developer' AND City = 'Delhi';

SELECT ID, Name, City
FROM employee 
WHERE City = 'Delhi' OR Salary = 30000;

SELECT ID, Name, City
FROM employee
WHERE NOT City= 'Delhi';

SELECT *FROM employee
WHERE City LIKE 'D%';

SELECT *FROM employee
WHERE Name LIKE 'S%';

SELECT *FROM employee
WHERE Name LIKE '%k';

SELECT *FROM employee
WHERE Mobile LIKE '__2%';

SELECT *FROM employee
WHERE Name NOT LIKE 'a%';

SELECT *FROM employee
WHERE CITY IN ('Delhi', 'Pune'); 

SELECT *FROM employee 
WHERE City NOT IN('Delhi', 'Pune');

SELECT *FROM employee
WHERE Profile IN ('Software tester', 'Software developer'); 

SELECT *FROM employee
WHERE Profile IN ('Software developer'); 

SELECT *FROM employee
WHERE Salary BETWEEN 20000 AND 40000;

SELECT *FROM employee
WHERE ID BETWEEN 3 AND 5;

SELECT *FROM employee
WHERE DOB BETWEEN '1995-02-26' AND '2000-02-28';

SELECT *FROM employee
LIMIT 3;

SELECT *FROM employee
ORDER BY Name, Mobile, Salary;

SELECT *FROM employee
ORDER BY Name DESC;

SELECT COUNT(Name)
FROM employee;

SELECT SUM(Salary) 
FROM employee; 

SELECT AVG(Salary) 
FROM employee;

SELECT Name,MIN(Salary) AS LowestSalary
FROM employee; 

SELECT Name,MAX(Salary)AS HighestSalary
FROM employee;

CREATE DATABASE companydb;

USE companydb; 

CREATE TABLE Customer
(
CustomerID int primary KEY,
CustomerName varchar(20),
Email varchar(50), 
Mobile varchar(10), 
City varchar(20)
); 

SELECT * FROM Customer;

INSERT INTO Customer VALUES(101, 'Roshan', 'rk74260@gmail.com', '8527152781', 'Greater Noida');
INSERT INTO Customer VALUES(102, 'Roshani', 'roshani70@gmail.com', '9527152786', 'Noida');
INSERT INTO Customer VALUES(103, 'Priya', 'pk@gmail.com', '7527147781', 'Delhi');
INSERT INTO Customer VALUES(104, 'Riya', 'riya@gmail.com', '6526152761', 'Greater Noida');
INSERT INTO Customer VALUES(105, 'Sandip', 'sk60@gmail.com', '9526154761', 'Pune');
INSERT INTO Customer VALUES(106, 'Supriya', 'supriya@gmail.com', '625162741', 'Gurgaon');
INSERT INTO Customer VALUES(107, 'Anand', 'anand@gmail.com', '7527155761', 'Patna');
INSERT INTO Customer VALUES(108, 'Miku', 'miku@gmail.com', '946715571', 'Deoghar');

CREATE TABLE Orders
(
OrderID int, 
customerID int primary KEY,
OrderDate date
); 

SELECT * FROM Orders;

INSERT INTO Orders VALUES(1,101, '2022-02-15');
INSERT INTO Orders VALUES(2,102, '2022-02-16');
INSERT INTO Orders VALUES(3,103, '2022-02-17');
INSERT INTO Orders VALUES(4,104, '2022-02-18');
INSERT INTO Orders VALUES(5,105, '2022-02-19');
INSERT INTO Orders VALUES(6,106, '2022-02-20');

SELECT Orders.OrderID, Customer.CustomerName,Email, Orders.OrderDate
FROM Orders
INNER JOIN Customer ON Orders.CustomerID=Customer.CustomerID;

SELECT Orders.OrderDate, Customer.City
FROM Orders
INNER JOIN Customer ON Orders.CustomerID=Customer.CustomerID;

USE company;

SELECT COUNT(Profile), SUM(Salary), Profile
FROM employee
GROUP BY Profile;


INSERT INTO employeeBackup
Select * FROM employee;

Create table employeeBackup(
ID int NOT NULL auto_increment primary KEY, 
Name varchar(30) NOT NULL,
Address varchar(100) NOT NULL,
City varchar(50) NOT NULL, 
Age int NOT NULL,
DOB date NOT NULL, 
Profile varchar(50) NOT NULL,  
Salary decimal(15,2) NOT NULL,
Email varchar(50) NOT NULL, 
Mobile varchar(10) NOT NULL
);

SELECT * FROM employeeBackup;
