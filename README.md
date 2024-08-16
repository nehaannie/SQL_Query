# SQL Query Exercises Repository

This repository contains SQL queries related to two different datasets: `Country Pollution` and `Employee Management`. The queries are divided into two rounds, with each round focusing on specific aspects of data retrieval and manipulation.

## Repository Structure

- **Round1:** Contains queries related to the `country_pollution` dataset, which includes environmental data such as temperature and CO2 emissions by country.
- **Round2:** Contains queries related to employee management, covering data on employees, departments, and orders.

## Round 1: Country Pollution Queries

### Table Structure

**country_pollution**

| Column         | Data Type    | Description                                      |
|----------------|--------------|--------------------------------------------------|
| `Country`      | `VARCHAR(50)`| Name of the country                              |
| `Temperature`  | `INT`        | Temperature in degrees Celsius                   |
| `CO2_Emissions`| `INT`        | CO2 emissions in metric tons                     |
| `Date`         | `INT`        | Year of the recorded data                        |

### Questions Analysed
1.Highest Temperature Records
2.Countries with CO2 Emissions Data for 2020
3.Missing Temperature Data for 2015
4.Average Temperature Per Year

## Round 2: Employee Management Queries
Table Structure

### Table Structure

**Employees**

| Column         | Data Type     | Description                                     |
|----------------|---------------|-------------------------------------------------|
| `EmployeeID`   | `INT`         | Unique identifier for each employee             |
| `FirstName`    | `VARCHAR(50)` | First name of the employee                      |
| `LastName`     | `VARCHAR(50)` | Last name of the employee                       |
| `DepartmentID` | `INT`         | Foreign key to the Departments table            |

**Departments**

| Column          | Data Type     | Description                                    |
|-----------------|---------------|------------------------------------------------|
| `DepartmentID`  | `INT`         | Unique identifier for each department          |
| `DepartmentName`| `VARCHAR(100)`| Name of the department                        |

**Orders**

| Column       | Data Type     | Description                                 |
|--------------|---------------|---------------------------------------------|
| `OrderID`    | `INT`         | Unique identifier for each order            |
| `EmployeeID` | `INT`         | Foreign key to the Employees table          |
| `OrderDate`  | `DATE`        | Date when the order was placed              |
| `TotalAmount`| `DECIMAL(10, 2)`| Total amount for the order                |

## Key Queries
Total Sales Amount by Department

Contact
For any questions or inquiries, please reach out to nehaannie2002@gmail.com

