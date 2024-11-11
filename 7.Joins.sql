/* JOINS 
In SQL, joins are used to combine rows from two or more tables based on a related column.
Joins allow you to retrieve data across multiple tables in a relational database, making them essential for complex queries. 
Here’s a breakdown of the most common types of joins:
1. INNER JOIN
Purpose
An INNER JOIN returns only the rows where there is a match in both tables. 
If there’s no match, the row is excluded from the result set.
inner joins includes all the intersection data like in set 
Syntax
  SELECT table1.column1, table2.column2
  FROM table1
  INNER JOIN table2 ON table1.common_column = table2.common_column;
*/
select * 
from employee_demographics
INNER JOIN employee_salary 
ON employee_demographics.employee_id = employee_salary.employee_id;
-- here the output doisnpt include data of employee-id 2 because it is only in one table ie employee_salary table

-- for ease we can use alaising as 
select * 
from employee_demographics as demo
INNER JOIN employee_salary  as sal
ON demo.employee_id = sal.employee_id;

select *
from employee_demographics as demo 
INNER JOIN employee_salary  as sal
ON  demo.first_name=sal.first_name;

#OUTER JOINS 
/*
Outer joins in SQL allow you to retrieve rows that have no match in one of the joined tables, 
filling unmatched rows with NULL values. There are three types of outer joins:
 LEFT JOIN (also known as LEFT OUTER JOIN), RIGHT JOIN (or RIGHT OUTER JOIN), and FULL JOIN (or FULL OUTER JOIN).
 Here’s how each works:
1.LEFT OUTER JOIN / LEFT JOIN
A LEFT JOIN returns all rows from the left table and the matching rows from the right table.
If there’s no match in the right table, the result set will have NULL for columns from the right table.
SYNTAX:
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.common_column = table2.common_column;
*/
select demo.first_name,sal.occupation
from employee_demographics as demo 
left JOIN employee_salary  as sal
ON  demo.first_name=sal.first_name;

/* RIGHT JOIN 
A RIGHT JOIN returns all rows from the right table and the matching rows from the left table.
If there’s no match in the left table, the result set will contain NULL for columns from the left table.
*/
select *
from employee_demographics as demo 
RIGHT JOIN employee_salary  as sal
ON  demo.first_name=sal.first_name;

