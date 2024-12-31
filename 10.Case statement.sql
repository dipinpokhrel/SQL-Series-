/* The CASE statement in SQL is used to add conditional logic to queries,similar to an "if-else" structure in programming.
 It allows you to return different values based on specific conditions.
 SYNTAX:
 CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE result N
END
Example :
  */

  select first_name , last_name ,
  case 
   when salary >50000 then salary*1.05
   when salary< 50000 then salary*1.07
    end as new_salary,
    case 
    when  dept_id=6 then salary*0.10
    end as Bonus
    from employee_salary;
    
 