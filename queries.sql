CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

LOAD DATA INFILE 'descargas/archivo/employees.csv'
INTO TABLE Employees
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50)
);

LOAD DATA INFILE 'ruta/al/archivo/departments.csv'
INTO TABLE Departments
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.EmployeeID, e.FirstName, e.LastName, COALESCE(d.DepartmentName, 'No asignado') AS DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT d.DepartmentID, d.DepartmentName, COALESCE(e.FirstName, 'No hay empleados') AS FirstName, COALESCE(e.LastName, '') AS LastName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID;

SELECT 'Employee' AS Type, EmployeeID AS ID, FirstName, LastName, DepartmentID
FROM Employees
UNION

SELECT e.EmployeeID, e.FirstName AS EmployeeFirstName, e.LastName AS EmployeeLastName, e.DepartmentID AS EmployeeDepartmentID, 
       d.DepartmentID AS DepartmentID, d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.DepartmentID
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL;

SELECT d.DepartmentID, d.DepartmentName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
WHERE e.DepartmentID IS NULL;

SELECT e.EmployeeID, e.FirstName, e.LastName, e.DepartmentID
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'IT';

-- Empleados sin departamento
SELECT e.EmployeeID, e.FirstName, e.LastName, e.DepartmentID AS EmployeeDepartmentID, 'No tiene departamento' AS DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentID IS NULL

UNION ALL

-- Departamentos sin empleados
SELECT 'No tiene empleado' AS EmployeeID, '' AS FirstName, '' AS LastName, d.DepartmentID, d.DepartmentName
FROM Departments d
LEFT JOIN Employees e ON d.DepartmentID = e.DepartmentID
WHERE e.EmployeeID IS NULL;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
ORDER BY e.LastName;

SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'HR';


