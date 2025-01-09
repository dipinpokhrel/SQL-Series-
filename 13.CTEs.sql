 /* A CTE (Common Table Expression) in MySQL is a temporary result set that can be referred to within a SELECT,
 INSERT, UPDATE, or DELETE statement. 
 It helps make complex queries more readable and modular.
 works just like substring 
 SYNTAX :
 WITH cte_name AS (
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition
)
SELECT * 
FROM cte_name;
*/
 -- example 
 
 with cte_example AS (
  select * 
  from employee_salary
  where  salary > 60000
 )
 select * 
 from cte_example ;