-- UNION in MySQL

-- by default the union function yeilds unique results you can exclusively recall by the term DISTINCT
select first_name, last_name from employee_demographics
union
select first_name, last_name from employee_salary;

-- union distinct
select first_name, last_name from employee_demographics
union distinct
select first_name, last_name from employee_salary;


-- union all
select first_name, last_name from employee_demographics
union all
select first_name, last_name from employee_salary;

-- multiple select statements use case to filter based on age and salary of employees
select first_name, last_name, 'Old Man' as Label from employee_demographics
where age >40 and gender = 'male'
union
select first_name, last_name, 'Old Lady' as Label from employee_demographics
where age >40 and gender = 'female'
union
select first_name, last_name,'Highly Paid' as Label from employee_salary
where salary > 70000
order by first_name
;