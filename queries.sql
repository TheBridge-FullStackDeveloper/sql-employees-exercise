--Encuentra todos los empleados y sus respectivos nombres de departamento.
select e."FirstName", e."LastName", d."DepartmentName" 
from employees e 
inner join departments d on e."DepartmentID" = d."DepartmentID"
order by d."DepartmentName";

--Muestra todos los empleados y sus departamentos, incluyendo a aquellos 
--empleados que no tienen departamento asignado.
select e."FirstName", e."LastName", d."DepartmentName" 
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID"
order by d."DepartmentName" ;

--Lista todos los departamentos y los empleados que pertenecen a cada uno, 
--incluyendo departamentos sin empleados.
select d."DepartmentName", e."FirstName", e."LastName"
from employees e 
right join departments d on e."DepartmentID" = d."DepartmentID"
order by  d."DepartmentName";

--Haz una lista completa de todos los empleados y todos los departamentos, 
--independientemente de si hay una coincidencia entre ellos o no.
select d."DepartmentName", e."FirstName", e."LastName"
from employees e 
full outer join departments d on e."DepartmentID" = d."DepartmentID"
order by  d."DepartmentName";

--Encuentra todos los empleados que no tienen relaciones con ningún departamento.
select e."FirstName", e."LastName", e."DepartmentID", d."DepartmentName" 
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID"
where d."DepartmentID" isnull ;

--Identifica los departamentos que no tienen ningún empleado relacionado.
select d."DepartmentName" 
from departments d
left join employees e on d."DepartmentID" = e."DepartmentID"
where e."DepartmentID" isnull ;
--Selecciona todos los empleados que trabajan en el departamento de IT.

--Lista todas las filas que no tienen una coincidencia en la otra tabla, es decir, 
--empleados sin departamento y departamentos sin empleados.
select e."FirstName", d."DepartmentName"
from employees e 
full outer join departments d on d."DepartmentID" = e."DepartmentID"
where e."DepartmentID" isnull or d."DepartmentID" isnull

--Muestra todos los empleados y sus departamentos ordenados por el apellido del empleado.

--Encuentra todos los empleados del departamento de HR.
