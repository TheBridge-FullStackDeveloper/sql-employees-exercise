select e."FirstName", e."LastName"  , d."DepartmentName" 
from employees e 
inner join departments d on e."DepartmentID" = d."DepartmentID" ;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID" ;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
full outer join departments d on e."DepartmentID" = d."DepartmentID" ;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID" 
where d."DepartmentName" is null;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
right join departments d on e."DepartmentID" = d."DepartmentID" 
where e."FirstName" is null;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
inner join departments d on e."DepartmentID" = d."DepartmentID" 
where d."DepartmentID" = 2 ;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
full outer join departments d on e."DepartmentID" = d."DepartmentID" 
where e."FirstName" is null or d."DepartmentName" is null;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
left join departments d on e."DepartmentID" = d."DepartmentID" 
order by e."LastName" asc ;

select e."FirstName", e."LastName" , d."DepartmentName" 
from employees e 
inner join departments d on e."DepartmentID" = d."DepartmentID" 
where d."DepartmentID" = 3 ;