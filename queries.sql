-- Encuentra todos los empleados y sus respectivos nombres de departamento.
SELECT e."FirstName", e."LastName", d."DepartmentName" 
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID";
-- Muestra todos los empleados y sus departamentos, incluyendo a aquellos empleados que no tienen departamento asignado.
SELECT e."FirstName", e."LastName",d."DepartmentName"
FROM employees e 
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
-- Lista todos los departamentos y los empleados que pertenecen a cada uno, incluyendo departamentos sin empleados.
SELECT d."DepartmentName", e."FirstName", e."LastName"
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID";
-- Haz una lista completa de todos los empleados y todos los departamentos, independientemente de si hay una coincidencia entre ellos o no.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
FULL OUTER JOIN departments d ON e."DepartmentID" = d."DepartmentID";
-- Encuentra todos los empleados que no tienen relaciones con ningún departamento.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentID" IS NULL;
-- Identifica los departamentos que no tienen ningún empleado relacionado.
SELECT d."DepartmentName"
FROM departments d
LEFT JOIN employees e ON d."DepartmentID" = e."DepartmentID"
WHERE e."EmployeeID" IS NULL;
-- Selecciona todos los empleados que trabajan en el departamento de IT.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentName" = 'DevelopmentDept';
-- Lista todas las filas que no tienen una coincidencia en la otra tabla, es decir, empleados sin departamento y departamentos sin empleados.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
FULL OUTER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE e."EmployeeID" IS NULL OR d."DepartmentID" IS NULL;
-- Muestra todos los empleados y sus departamentos ordenados por el apellido del empleado.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
LEFT JOIN departments d ON e."DepartmentID" = d."DepartmentID"
ORDER BY e."LastName";
-- Encuentra todos los empleados del departamento de HR.
SELECT e."FirstName", e."LastName", d."DepartmentName"
FROM employees e
INNER JOIN departments d ON e."DepartmentID" = d."DepartmentID"
WHERE d."DepartmentName" = 'Marketing';