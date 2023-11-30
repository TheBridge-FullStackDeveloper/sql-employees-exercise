select e. "FirstName", e. "LastName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" 


select e. "FirstName", e. "LastName", d."DepartmentName" from employees e left join departments d on e. "DepartmentID" = d."DepartmentID" 


select e. "FirstName", e. "LastName", d."DepartmentName" from employees e right join departments d on e. "DepartmentID" = d."DepartmentID" 


select e. "FirstName", e."LastName", d."DepartmentName" from employees e full outer join departments d on e."DepartmentID" = d."DepartmentID"


select e. "FirstName", e."LastName", d."DepartmentName" from employees e left join  departments d on e."DepartmentID"= d."DepartmentID" where d."DepartmentName" is null


select e. "FirstName", e."LastName", d."DepartmentName" from employees e  left join  departments d on e."DepartmentID"= e."EmployeeID" where d."DepartmentName"  is null


select e. "FirstName", e. "LastName", d."DepartmentName" from employees e inner join departments d on d."DepartmentName"= 'DevelopmentDept'  


select e. "FirstName", e."LastName", d."DepartmentName" from employees e full outer join  departments d on e."DepartmentID"= d."DepartmentID" where e."EmployeeID"  is null or d."DepartmentID" is null



select e. "FirstName", e."LastName", d."DepartmentName" from employees e inner join  departments d on e."DepartmentID"= d."DepartmentID" order by "LastName" -- devulve empleados con departmentos

select e. "FirstName", e."LastName", d."DepartmentName" from employees e left join  departments d on e."DepartmentID"= d."DepartmentID" order by "LastName" -- devulve empleado con y sin departamentos



select e. "FirstName", e. "LastName", d."DepartmentName" from employees e inner join departments d on d."DepartmentName"= 'AdminDept'  order by "LastName" 