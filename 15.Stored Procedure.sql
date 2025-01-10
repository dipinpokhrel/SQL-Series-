/*A stored procedure in MySQL is a set of SQL statements that are stored on the server
 and can be executed as a single unit. Stored procedures are used to encapsulate logic, 
reduce redundancy, and improve performance by minimizing client-server communication.
Why Use Stored Procedures? 
Code Reusability: Write once and call multiple times.
Improved Performance: Reduce the need to send multiple queries over the network.
Encapsulation: Hide complex logic behind a single procedure call.
Security: Grant users permission to execute procedures without exposing the underlying tables.
	SYNTAX:
	DELIMITER $$
CREATE PROCEDURE procedure_name (parameters)
BEGIN
    -- SQL statements
END$$

DELIMITER ;
	Used to define a new statement delimiter (e.g., $$) 
	to avoid conflicts with the semicolon (;) inside the procedure body.
		 SOURCE:chatGpt
         
lets see some exampes :
*/

 SELECT * 
 From employee_demographics;
 
 
 DELIMITER $$
 CREATE Procedure  old_age_employees ()
 BEGIN 
	 select * 
	 FROM employee_demographics
	 where age>=50;
 end $$
 DELIMITER ;
 CALL  old_age_employees ();
   
   
   USE parks_and_recreation 
   DELIMITER $$ 
   CREATE PROCEDURE large_salary6()
   BEGIN 
	SELECT * 
    from employee_salary
    where salary>= 50000;
    
    select first_name,last_name
    from employee_salary
    where salary>=50000;
    end $$
    DELIMITER ;
    
     call large_salary6();
     
     
    DELIMITER $$
CREATE PROCEDURE salary_1(p_emp_id int )
   BEGIN 
	SELECT first_name, salary
    from employee_salary
    where employee_id = p_emp_id  ;
    end $$
    DELIMITER ;

     call salary_1(1);
 
 

