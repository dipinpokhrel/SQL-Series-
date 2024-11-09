# Having vs where 
#The WHERE clause is used to filter rows before any grouping or aggregation takes place. 
#It applies conditions directly to individual rows of data in the table.

select *
from employee_salary
where salary>50000;

select * 
From employee_salary
where first_name like 'a%';

#Having 
#he HAVING clause is used to filter groups after aggregation has been performed. 
#It applies conditions to aggregated results, such as those obtained from SUM, COUNT, AVG, etc.

select occupation,AVG(salary)
From employee_salary
where occupation like '%manager'
group by occupation 
having avg(salary)>30000;

