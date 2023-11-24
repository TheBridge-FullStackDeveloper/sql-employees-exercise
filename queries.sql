-- Encuentra todos los empleados y sus respectivos nombres de departamento.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
inner join departments d 
on d."DepartmentID" = e."DepartmentID" 

-- Muestra todos los empleados y sus departamentos, incluyendo a aquellos empleados que no tienen departamento asignado.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
left join departments d 
on d."DepartmentID" = e."DepartmentID" 

-- Lista todos los departamentos y los empleados que pertenecen a cada uno, incluyendo departamentos sin empleados.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
right join departments d 
on d."DepartmentID" = e."DepartmentID" 

-- Haz una lista completa de todos los empleados y todos los departamentos, independientemente de si hay una coincidencia entre ellos o no.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
full outer join departments d 
on d."DepartmentID" = e."DepartmentID" 

-- Encuentra todos los empleados que no tienen relaciones con ningún departamento.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
left join departments d 
on d."DepartmentID" = e."DepartmentID" 
where d."DepartmentName" is null

-- Identifica los departamentos que no tienen ningún empleado relacionado.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
right join departments d 
on d."DepartmentID" = e."DepartmentID" 
where e."FirstName" is null

-- Selecciona todos los empleados que trabajan en el departamento de IT.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
inner join departments d 
on d."DepartmentID" = e."DepartmentID" 
where d."DepartmentName" = 'DevelopmentDept'

-- Lista todas las filas que no tienen una coincidencia en la otra tabla, es decir, empleados sin departamento y departamentos sin empleados.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
full outer join departments d 
on d."DepartmentID" = e."DepartmentID" 
where d."DepartmentName" is null or e."FirstName" is null

-- Muestra todos los empleados y sus departamentos ordenados por el apellido del empleado.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
inner join departments d 
on d."DepartmentID" = e."DepartmentID" 
order by e."LastName" 

-- Encuentra todos los empleados del departamento de HR.

select e."FirstName" , e."LastName", d."DepartmentName" 
from employees e 
inner join departments d 
on d."DepartmentID" = e."DepartmentID" 
where d."DepartmentName" = 'AdminDept'