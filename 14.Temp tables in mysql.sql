/* A temporary table in MySQL is a special type of table that exists only for the duration of a session.
 Once the session ends or the table is explicitly dropped, the temporary table is automatically deleted. 
Temporary tables are useful for storing intermediate results or simplifying complex queries.
SYNTAX :
 CREATE TEMPORARY TABLE temp_table_name (
    column1 datatype,
    column2 datatype,
    ...
);
                           source: chatGpt 
                           
*/

create temporary table temp_table
(first_name varchar(20),
last_name varchar(40),
salary float );


Insert into temp_table
values ('dipin' ,'pokhrel', 60000),
	    ('ram' ,'pokhrel', 60000)
;
 select * 
 from temp_table;
 
create temporary table salary_over_60k
select * 
from employee_salary
where salary >= 60000;
 select * from salary_over_60k;
 
 -- Temporary tables in SQL are used for several practical reasons, primarily when dealing with complex 
 -- queries,intermediate data, or session-specific operations

