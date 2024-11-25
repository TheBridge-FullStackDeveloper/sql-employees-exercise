1.
done
2.
select e."EmployeeID", e."FirstName", d."DepartmentName" from employees e join departments d on e."DepartmentID" = d."DepartmentID" ;
3.
select e."EmployeeID", e."FirstName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" ;
4.
select e."FirstName", d."DepartmentName" from employees e right join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID"  ;
5.
select e."FirstName", d."DepartmentName" from employees e full outer join departments d on e."DepartmentID" = d."DepartmentID" order by d."DepartmentID" ;
6.
select e."FirstName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" where d."DepartmentID" is NULL;
7.
select d."DepartmentName" from departments d left join employees e on d."DepartmentID" = e."DepartmentID" where e."DepartmentID" is null;
8.
select e."FirstName" from employees e where e."DepartmentID" = 3;
9.
select e."FirstName", d."DepartmentName" from employees e full outer join departments d on e."DepartmentID" = d."DepartmentID" where e."DepartmentID" is null or d."DepartmentID" is null;
10.
select e."FirstName", e."LastName", d."DepartmentName" from employees e left join departments d on e."DepartmentID" = d."DepartmentID" order by e."LastName" ;
11. /* no hay hr? */
select e."FirstName" from employees e where e."DepartmentID" = 10;