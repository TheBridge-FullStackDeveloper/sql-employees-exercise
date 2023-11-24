SELECT e."FirstName", e."LastName", d."DepartmentName" 
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID";

select e."FirstName", e."LastName",d."DepartmentName"
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID"

SELECT d."DepartmentName", e."FirstName", e."LastName"
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID";

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
FULL OUTER JOIN departments d ON e."DepartmentID" = d."DepartmentID";

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentID" IS NULL;

SELECT d."DepartmentName"
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID"
WHERE e."EmployeeID" IS NULL;

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentName" = 'DevelopmentDept';

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
FULL OUTER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE e."EmployeeID" IS NULL OR d."DepartmentID" IS NULL;

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
ORDER BY e."LastName";

SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentName" = 'Marketing';