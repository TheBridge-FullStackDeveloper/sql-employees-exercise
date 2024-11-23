/* Los dos archivos son `employees.csv` y `departments.csv` */
/* Deparments has departmentID and DepartmentName */
/* Employees has EmployeeID, FirstName, LastName, DepartmentID */
/* Employees to the left, departments to the right */

/* Encuentra todos los empleados y sus respectivos nombres de departamento. */

SELECT e."FirstName", e."LastName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID";

/* Muestra todos los empleados y sus departamentos, incluyendo a aquellos empleados que no tienen departamento asignado. */

SELECT e."FirstName", e."LastName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID";

/* Lista todos los departamentos y los empleados que pertenecen a cada uno, incluyendo departamentos sin empleados. */

SELECT d."DepartmentName", e."FirstName", e."LastName" from employees e right join department d on e."DepartmentID" = d."DepartmentID";

/* Haz una lista completa de todos los empleados y todos los departamentos, independientemente de si hay 
una coincidencia entre ellos o no. */

SELECT e."FirstName", e."LastName", d."DepartmentName" from employees e full join departments d on e."DepartmentID" = d."DepartmentID";

/* Encuentra todos los empleados que no tienen relaciones con ningún departamento. */

SELECT e."FirstName", e."LastName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" is null;

/* Identifica los departamentos que no tienen ningún empleado relacionado. */

SELECT d."DepartmentName", e."FirstName", e."LastName" from employees e right join departments d on e."DepartmentID" = d."DepartmentID" where e."FirstName" is null and e."LastName" is null;

/* Selecciona todos los empleados que trabajan en el departamento de IT. */
/*There is not a department called IT, so I will use SupportDept instead*/

SELECT d."DepartmentName", e."FirstName", e."LastName" from employees e right join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" = 'SupportDept';

/* Lista todas las filas que no tienen una coincidencia en la otra tabla, es decir, empleados sin 
departamento y departamentos sin empleados. */

SELECT e."FirstName", e."LastName", d."DepartmentName" from employees e full join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" is null or e."FirstName" is null or e."LastName" is null;

/* Muestra todos los empleados y sus departamentos ordenados por el apellido del empleado. */

SELECT e."LastName", e."FirstName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" order by e."LastName";

/* Encuentra todos los empleados del departamento de HR. */
/*there is not a department called HR, so I will use AdminDept instead*/

SELECT d."DepartmentName", e."FirstName", e."LastName" from employees e right join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" = 'AdminDept';