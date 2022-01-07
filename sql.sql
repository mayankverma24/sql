SELECT employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id
FROM dbo.employees;


SELECT MAX(salary) 
FROM dbo.employees  
WHERE salary NOT IN (SELECT MAX(salary) FROM dbo.employees); 

--Find the nth MAX salary in the emp table.
SELECT DISTINCT salary FROM dbo.employees e1 where (select count(distinct salary) from dbo.employees e2 where e1.salary <= e2.salary) = 1;

--Find the nth MIN salary in the emp table.
SELECT DISTINCT salary FROM dbo.employees e1 where (select count(distinct salary) from dbo.employees e2 where e1.salary >= e2.salary) = 2;

--Fetch monthly salary if Annual salary is in one of the columns
SELECT (salary/12) as 'Monthly Salary', * from dbo.employees;

--How to get 3 Max salaries ?
SELECT DISTINCT salary 
from dbo.employees a 
where (select count(distinct salary) from dbo.employees b where a.salary <= b.salary)
order by a.salary desc >= 3;


--Select LAST n records from a table.
SELECT TOP 5 * FROM dbo.employees ORDER BY employee_id DESC;

--Select FIRST n records from a table.
Select top 5 * from dbo.employees order by employee_id ASC;
SELECT * FROM dbo.employees e WHERE rownum <= 3;


--select odd rows
Select * from dbo.employees e where (employee_id%2)=1;

--select even rows
Select * from dbo.employees e where (employee_id%2)=0;

SELECT * from dbo.employees e 
cross join dbo.departments d on
e.department_id = d.department_id;

SELECT
	MIN(salary),
	d.department_name
from
	.employees e
join dbo.departments d 
on
	e.department_id = d.department_id
group by
	d.department_name;  

SELECT * FROM dbo.employees;

--How to fetch only common records from two tables emp and emp1?
(Select * from dbo.employees e) UNION (Select * from dbo.employees e2);

Select FIRST_NAME, hire_date, CAST(hire_date AS VARCHAR(4)) JoinYear , CAST(hire_date), CAST(hire_date AS VARCHAR(2)) from dbo.employees;


SELECT CAST(GETDATE() AS VARCHAR);
SELECT REVERSE('SQL Tutorial');
SELECT REPLACE(first_name , 'a','*'), * FROM dbo.employees;


