-- differece between HAVING & WHERE
-- having comes after group by
select gender, avg(age) from employee_demographics
group by gender
having avg(age) > 40;


-- having is used to filter agregate functions
select occupation, avg(salary) from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;