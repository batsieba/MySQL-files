select length('sky');

select first_name, length(first_name) len from employee_demographics
order by len;


select upper('sky');
select lower('SKY');

select first_name, UPPER(first_name)  from employee_demographics;

-- trim function - removes of the leading and trailing white spaces
select trim(' 			sky				');

-- ltrim function - removes of the leading white spaces
select ltrim(' 			sky				');

-- rtrim function - removes of the trailing white spaces
select rtrim(' 						bye				');


-- left, right, substring functions
select first_name, left(first_name, 4), right(first_name, 4), substring(first_name, 3,2), 
birth_date, substring(birth_date, 6,2) as birth_month
from employee_demographics;

-- replace function
select first_name, replace(first_name, 'a', 'z') from employee_demographics;

-- locate function
select locate('x', 'Alexander');

select first_name, locate('E', first_name) from employee_demographics;


-- concatiation
select first_name, last_name, concat(first_name, ' ', last_name) as full_name from employee_demographics;
