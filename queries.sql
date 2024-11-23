select e."FirstName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID" asc

select e."FirstName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID" asc

select  d."DepartmentName",e."FirstName" from employees e right join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID" asc

select e."FirstName", d."DepartmentName" from employees e full outer join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID" asc

select e."FirstName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" is Null  order by e."FirstName" asc

select d."DepartmentName", e."FirstName"  from employees e right join departments d on e."DepartmentID" = d."DepartmentID" where e."FirstName" is Null  order by e."FirstName" asc

select e."FirstName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentID" = 1 order by d."DepartmentID" asc

select e."FirstName", d."DepartmentName" from employees e full outer join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentName" is null or e."FirstName" is null order by e."FirstName" asc

select e."FirstName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" order by e."LastName" asc

select e."FirstName", d."DepartmentName" from employees e inner join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentID" = 3 order by e."DepartmentID" asc