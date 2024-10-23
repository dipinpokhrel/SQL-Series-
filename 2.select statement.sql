SELECT * FROM parks_and_recreation.employee_demographics;


select *
from parks_and_recreation.employee_salary where salary>40000; // here the databasename is specifically given to access the emplopyee_salary table 

select *
From parks_departments;

/* selecting specific row */
select employee_id , first_name ,salary 
FROM parks_and_recreation.employee_salary ;

/*PEMDAS = for mathematical operations that stands:
P: Parentheses
E: Exponents (though SQL doesn't support exponents directly, functions like POWER() can be used)
M: Multiplication
D: Division
A: Addition
S: Subtraction
*/
select employee_id , first_name ,salary,(salary+10000)*2 # here the (salary+10000) will be done ffirst and it is multiplied by 2 after 
FROM parks_and_recreation.employee_salary ; 

#DISTINCT : the DISTINCT keyword is used to remove duplicate records from the result set. It returns only unique values for the specified columns, ensuring that each value appears only once.
SELECT distinct gender
FROM parks_and_recreation.employee_demographics ; # here the output is only male and female 

