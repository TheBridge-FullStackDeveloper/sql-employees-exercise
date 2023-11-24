--2
SELECT e."FirstName" , e."LastName", d."DepartmentName" 
FROM employees e 
INNER JOIN departments d 
ON d."DepartmentID" = e."DepartmentID" 

--3
SELECT e."FirstName" , e."LastName", d."DepartmentName" 
FROM employees e 
INNER JOIN departments d 
ON d."DepartmentID" = e."DepartmentID" 

--4
SELECT d."DepartmentName", e."FirstName", e."LastName"
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID";

--5
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
FULL JOIN departments d ON e."DepartmentID" = d."DepartmentID";

--6
SELECT e."FirstName" , e."LastName", d."DepartmentName" 
FROM employees e 
LEFT JOIN departments d 
ON d."DepartmentID" = e."DepartmentID" 
WHERE d."DepartmentName" IS NULL


--7
SELECT d.*
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID"
WHERE e."EmployeeID" IS NULL;

--8
SELECT e.*
FROM employees e
JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentName" = 'DevelopmentDept';

--9
SELECT e.*, d."DepartmentName"
FROM employees e
FULL JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE e."EmployeeID" IS NULL OR d."DepartmentID" IS NULL;

--10
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
ORDER BY e."LastName";

--11
SELECT *
FROM employees
WHERE "DepartmentID" = (
    SELECT "DepartmentID"
    FROM departments
    WHERE "DepartmentName" = 'AdminDept'
);
