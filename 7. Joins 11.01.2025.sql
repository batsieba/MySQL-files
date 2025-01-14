-- joins in MySQL

select * from employee_demographics;

select * from employee_salary;

-- JOIN or INNER JOIN
-- it will bring result with data that are common in both of the tables
select * from employee_demographics dem
inner join employee_salary sal
on dem.employee_id = sal.employee_id;


-- OUTER JOIN
-- LEFT JOIN - will take everything from the first table even if there is no match corresponding with the second table
select * from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id = sal.employee_id;



-- RIGHT JOIN - will take everything from the second table even if there is no match corresponding with the first table
select * from employee_demographics as dem
right join employee_salary as sal
on dem.employee_id = sal.employee_id;


-- self join  (good to join a table to itself
select emp1.employee_id as emp_santa,
emp1.first_name as fn_santa,
emp1.last_name as ln_santa,
emp2.employee_id as emp,
emp2.first_name as fn_emp,
emp2.last_name as ln_emp
from employee_salary emp1
join employee_salary emp2
	on emp1.employee_id + 1 = emp2.employee_id;
;


-- joining multiple tables together
select * from employee_demographics dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id;