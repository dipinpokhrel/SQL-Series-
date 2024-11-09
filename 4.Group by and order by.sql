#GROUP BY AND ORDER BY 
/*Group BY 
GROUP BY is used to group rows with identical values in specified columns, allowing you to perform aggregate
operations (like SUM, COUNT, AVG, etc.) on each group.
This is especially useful when summarizing data or producing reports based on categories, types, or specific fields.
*/

Select *
From employee_demographics
Group By gender;

Select  gender,avg(age)
From employee_demographics
Group By gender;

Select occupation ,avg(salary),max(salary),count(salary)
From employee_salary
Group By occupation;

/* Order BY 
ORDER BY sorts the result set by one or more columns, in either ascending (ASC) or descending (DESC) order.
You can apply ORDER BY without aggregation or after using GROUP BY to sort the grouped result.
*/
Select  salary ,occupation
From employee_salary
order By salary desc;


select * 
From employee_demographics
order by first_name;


select * 
From employee_demographics
order by first_name,age,gender;

