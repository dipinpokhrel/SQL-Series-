/* A subquery in SQL is a query nested within another SQL query.
 It is used to perform an operation that provides data to the main (outer) query.
 Subqueries can be placed in the SELECT, FROM, WHERE, or other clauses, depending on the use case.
*/
-- here in given example, we use subquerie in where clause using 'IN' 

SELECT *
From employee_demographics
where employee_id in 
                    ( select employee_id 
                    from employee_salary 
                    where dept_id=1)
                    ;
                    
	-- example-II
    select AVG(max_age),avg(max_age )
    from (select max(age) as max_age, min(age) as min_age 
    from employee_demographics as agg_age ) 
    employee_demograpgics;
