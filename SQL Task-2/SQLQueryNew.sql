CREATE DATABASE Company

USE Company

CREATE TABLE Employee 
(
Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30),Surname NVARCHAR(30),Age INT,	FatherName NVARCHAR(30),PositionId INT FOREIGN KEY REFERENCES Position(Id),Salary DECIMAL
)

CREATE TABLE Position 
(
Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30)
)

CREATE TABLE Branch 
(
Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(100)
)

CREATE TABLE Product 
(
Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30),Purchase DECIMAL(18,2),Sale DECIMAL(18,2)
)

CREATE TABLE Sale 
(
Id INT PRIMARY KEY IDENTITY,ProductId INT FOREIGN KEY REFERENCES Product(Id),EmployeeId INT FOREIGN KEY REFERENCES Employee(Id),SaleHistory DATE,BranchId INT FOREIGN KEY REFERENCES Branch(Id)
)

INSERT INTO Employee
VALUES ('Abbas','Memmedli',22,'Fuad',4,15000),
('Samid','Semedzade',22,'Musviq',2,5000),
('Zaman','Seferov',18,'Camal',2,8000),
('Seyfi','Necefli',20,'Meherrem',1,1500),
('Revan','Agayev',23,'Rauf',3,4500)

INSERT INTO Position
VALUES ('FrontEnd Developer Senior'),
('BackEnd Developer Senior'),
('Director'),
('CEO')

INSERT INTO Branch
VALUES ('Italia'),
('America'),
('Germany')

INSERT INTO Product
VALUES ('Coca-Cola',40,80),
('Mercedes',75444,100000),
('BMW',100000,140000),
('Clear-Men',70,170)

INSERT INTO Sale
VALUES (3,1,'2021-4-4',3),
(2,5,'2021-12-12',3),
(1,3,'2021-11-10',2),
(4,2,'2020-7-6',1),
(4,4,'2020-8-7',1)

SELECT (Employee.Name + ' ' + Employee.Surname + ' ' + Employee.FatherName) as FullName,Product.Name,Product.Purchase,Product.Sale,Branch.Name FROM Employee
INNER JOIN Sale On Sale.EmployeeId=Employee.Id
INNER JOIN Branch On Sale.BranchId=Branch.Id
INNER JOIN Product On Sale.ProductId=Product.Id



