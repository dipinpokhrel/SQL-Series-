/* Windows  function in mysql
 Window functions are a powerful feature used to perform calculations across a set of table rows that are
 related to the current row. Unlike aggregate functions, which return a single result for a group, 
 window functions return a value for each row in the group while maintaining the individual row's visibility.
 
 */ 
 SELECT gender, avg(salary) over(PARTITION BY GENDER )
 from employee_demographics  dem
 join employee_salary sal
 on dem.employee_id= sal.employee_id
  ;
  
  select dem.first_name, dem.last_name ,salary,sum(salary) over (partition by gender order by dem.employee_id) as ROLLING_TOTAL 
 from employee_demographics  dem
 join employee_salary sal
 on dem.employee_id= sal.employee_id
  ;
  
  select dem.first_name, dem.last_name ,gender , salary,
  row_number() over ( partition by gender order by salary desc) as row_num,
   RANK() over ( partition by gender order by salary desc) as rank_num
 FROM  employee_demographics  dem
 join employee_salary sal
 on dem.employee_id= sal.employee_id
  ;