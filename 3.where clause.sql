/*WHERE Clause 
 The WHERE clause in SQL is used to filter records in a query based on specified conditions.
 It allows you to select only those rows that meet the criteria defined in the condition.
  SYNTAX:
  SELECT column1, column2, ...
  FROM table_name
 WHERE condition;
*/
#we using database parks_and_recreation 
select *
FROM parks_and_recreation.employee_salary
where salary>= 45000;

/* OPERATORS USED WITH WHERE CLAUSE 
=: Equals
!= or <>: Not equals
>: Greater than
<: Less than
>=: Greater than or equal to
<=: Less than or equal to
BETWEEN: Within a range (inclusive)
LIKE: Pattern matching
IN: Check if a value exists in a list
IS NULL: Check for NULL values

1.equal operator 
*/
SELECT employee_id, first_name, occupation 
FROM parks_and_recreation.employee_salary
where salary=50000;

#2.not equal (!=)
SELECT employee_id, first_name, occupation 
FROM parks_and_recreation.employee_salary
where salary !=50000;

#3.Greater than ( >.)
SELECT employee_id, first_name, occupation 
FROM parks_and_recreation.employee_salary
where salary>50000;

#4.Smaller than (<)
SELECT employee_id, first_name, occupation, salary
FROM parks_and_recreation.employee_salary
where salary<50000;

#5.greater then or  equals to (>=)
SELECT employee_id, first_name, occupation, salary 
FROM parks_and_recreation.employee_salary
where salary>=50000;

#6.less than or equals to (<+)
SELECT employee_id, first_name, occupation, salary
FROM parks_and_recreation.employee_salary
where salary<=50000;

#7.between 
SELECT employee_id, first_name, occupation ,salary
FROM parks_and_recreation.employee_salary
where salary between 30000 and 70000;

#8.LIKE :The LIKE operator in SQL is used to search for a specified pattern in a column.
# It is commonly used in conjunction with the WHERE clause to filter records based on string patterns.

SELECT employee_id, first_name, occupation ,salary
FROM parks_and_recreation.employee_salary
where first_name LIKE 'a%' ;

SELECT employee_id, first_name, occupation ,salary
FROM parks_and_recreation.employee_salary
where first_name LIKE '%a%' ;

#9.IN :The IN statement in SQL is used to specify multiple values in a WHERE clause.
# It allows you to filter records that match any value within a specified list or a subquery.
#SYNTAX:
/*SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);
*/
SELECT * 
FROM employee_demographics 
WHERE first_name IN ('Tom','Jerry');

SELECT *
FROM employee_salary 
where occupation IN ('office manager','Nurse') ;

#10. IS NULL : used to find which have null value in specific column 
select * 
from employee_salary
where salary IS NULL;

-- logical operation in sql 
-- AND, OR,NOT
/* 1.AND operator 
The AND operator is used to combine multiple conditions, and it returns true only if all conditions are true. 
SYNTAX 
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2;
*/
SELECT *
FROM employee_demographics
where  age>30 AND gender='female';

/* 2.OR
The OR operator is used to combine multiple conditions, and it returns true if at least one of the conditions is true.
SYNTAX:
       SELECT column1, column2, ...
       FROM table_name
	WHERE condition1 OR condition2;
   */ 
SELECT * 
from employee_salary 
where dept_id=1 OR  first_name ='ron' ;

/* 3.NOT 
The NOT operator is used to negate a condition. It returns true if the condition is false.
SYNTAX:
       SELECT column1, column2, ...
       FROM table_name
	   WHERE NOT condition;*/
	
SELECT *
FROM employee_demographics
where NOT gender='Female'; 

# COMBINING ALL
SELECT *
FROM employee_salary
WHERE (occupation='Office manager' OR occupation='Nurse') AND salary>=50000;
 