#limit and aliasing 
-- The LIMIT clause restricts the number of rows returned by a query.
-- It’s particularly useful when working with large datasets 
-- and you only want to preview or retrieve a subset of data-- 
select * 
from employee_demographics
limit 4; 
-- here it limits upto 4 rows meaning it only prints  data of 4 rows 

select * 
from employee_demographics
order by age DESC
limit 4;


# ok now let us see another example of using limit 
#for our example we are using limit for selecting some wanted rows as
 select * 
from employee_demographics
order by age DESC
limit 4,1;
-- here in above example this limit 4,1 is used to select  1 row after 4th row position 

 select * 
from employee_demographics
order by age DESC
limit 4,3;
-- here the 5th row is slected all the way to 7th as limit 4,3 is there.

-- ALASING 
-- Aliasing allows you to assign a temporary name to a column or table within a query,
-- making results easier to understand and work with. 
-- Aliases are often used to rename columns or create custom names for calculated fields.

 select first_name as f,  age as a
from employee_demographics
order by a DESC
limit 4,1;
-- What aliasing does is rename the column for the user's convenience.
