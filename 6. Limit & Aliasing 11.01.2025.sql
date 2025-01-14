-- limit & aliasing

-- to display the first 4 rows
select * from employee_demographics
order by  age desc
limit 4;


-- to display the rows starting after the third row (3+1) and the next 2 rows
select * from employee_demographics
order by  age desc
limit 3,2;


-- aliasing
select gender, avg(age) as avg_age from employee_demographics
group by gender
having avg_age > 40;