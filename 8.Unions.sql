-- UNION 
-- Combining data from multiple tables or queries.
-- Creating consolidated reports from different sources.
-- Querying similar data sets for comparison or aggregation.
-- Removing duplicat
SELECT first_name,last_name
FROM employee_demographics
UNION 
SELECT first_name,last_name,
from employee_salary
WHERE salary >50000
;
SELECT * 
FROM employee_salary;

-- let us take a example to find out who is old 
select first_name , last_name, 'Old' AS Remarks 
from employee_demographics
where age >50
UNION 
SELECT first_name,last_name, 'Highly Paid Employee' 
FROM employee_salary
WHERE salary > 60000;