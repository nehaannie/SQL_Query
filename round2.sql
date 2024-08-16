---Create tables---

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,             
    FirstName VARCHAR(50) NOT NULL,         
    LastName VARCHAR(50) NOT NULL,          
    DepartmentID INT                        
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,           
    DepartmentName VARCHAR(100) NOT NULL    
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,                
    EmployeeID INT,                         
    OrderDate DATE NOT NULL,                
    TotalAmount DECIMAL(10, 2) NOT NULL     
);

---Insert Values---
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID)
VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'HR'),
(4, 'IT');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID)
VALUES
(101, 'Raj', 'Malhotra', 1),
(102, 'Ram', 'Sandro', 2),
(103, 'Rohan', 'Kiloskar', 3),
(104, 'Roshini', 'Sharma', 4),
(105, 'Rimi', 'Tomy', 1);

INSERT INTO Orders (OrderID, EmployeeID, OrderDate, TotalAmount)
VALUES
(10001, 101, '2024-08-01', 250.00),
(10002, 102, '2024-08-02', 750.75),
(10003, 103, '2024-08-03', 400.50),
(10004, 104, '2024-08-04', 650.25),
(10005, 105, '2024-08-05', 425.00),
(10006, 101, '2024-08-06', 575.50);

---Query to find total_sales---

SELECT Departments.DepartmentName,SUM(Orders.TotalAmount) AS TotalSalesAmount FROM Orders
JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID
JOIN Departments ON Employees.DepartmentID=Departments.DepartmentID
GROUP BY DepartmentName;
