SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM employees e 
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID 

SELECT e.FirstName, e.LastName, d.DepartmentName  
FROM employees e 
LEFT JOIN departments d ON e.DepartmentID = d.DepartmentID 

SELECT e.FirstName, e.LastName, d.DepartmentName 
FROM employees e 
RIGHT JOIN departments d ON e.DepartmentID = d.DepartmentID 

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
FULL OUTER JOIN departments d ON e.DepartmentID = d.DepartmentID 
ORDER BY d.DepartmentName 

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
LEFT JOIN departments d ON e.DepartmentID = d.DepartmentID 
WHERE d.DepartmentName ISNULL 

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
RIGHT JOIN departments d ON e.DepartmentID = d.DepartmentID 
WHERE e.FirstName ISNULL 

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID 
WHERE d.DepartmentID IS 1

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
FULL OUTER JOIN departments d ON e.DepartmentID = d.DepartmentID 
WHERE d.DepartmentName ISNULL OR e.FirstName ISNULL 

SELECT e.FirstName, e.LastName, d.DepartmentName  
FROM employees e 
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID 
ORDER BY e.LastName 

SELECT e.FirstName, e.LastName, d.DepartmentName   
FROM employees e 
INNER JOIN departments d ON e.DepartmentID = d.DepartmentID 
WHERE d.DepartmentID IS 3