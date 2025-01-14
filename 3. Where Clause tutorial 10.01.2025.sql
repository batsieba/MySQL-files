-- where clause

select * from employee_salary 
where first_name = "Leslie";

select * from employee_salary 
where salary >= 50000;


select * from employee_demographics
where gender != 'Female';

select * from employee_demographics
where birth_date > '1985-01-01'
;

-- logical operators
-- AND OR NOT
select * from employee_demographics
where birth_date > '1985-01-01'
AND gender= 'Male';


select * from employee_demographics
where birth_date > '1985-01-01'
or not gender= 'Male';

select * from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55;

-- like statement
-- wildcards = % and _
select * from employee_demographics
where first_name like 'Jer%';

select * from employee_demographics
where first_name like '%er%';

select * from employee_demographics
where first_name like 'a%';

select * from employee_demographics
where first_name like 'a__';

select * from employee_demographics
where first_name like 'a___%';

select * from employee_demographics
where birth_date like '1989%';

