
-- group by

select * from employee_demographics;


select gender from employee_demographics
group by gender;

-- ageregate functions
select gender, avg(age) from employee_demographics
group by gender;

select gender, avg(age), max(age), min(age), count(age) from employee_demographics
group by gender;


select occupation, salary from employee_salary
group by occupation,salary
;



-- ORDER BY
select * from employee_demographics
order by first_name desc;

select * from employee_demographics
order by gender, age desc;
