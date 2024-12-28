/*STRING FUNCTIONS
String functions in SQL are used to manipulate and work with string data.
 Here is a detailed explanation of commonly used SQL string functions:
 1. CONCAT()
- Purpose: Combines two or more strings into one.
syntax: `CONCAT(string1, string2, ...)`
- **Example**:
sql
  SELECT CONCAT('Hello', ' ', 'World') AS Result;
  Output: Hello World
*/
-- Example :
 SELECT first_name, last_name , CONCAT(first_name,' ',last_name)
 from employee_demographics;


/*2. SUBSTRING() / SUBSTR()
- Purpose: Extracts a part of a string.
- Syntax: SUBSTRING(string, start, length) or SUBSTR(string, start, length)
- Example:
  sql
  SELECT SUBSTRING('Hello World', 1, 5) AS Result;
   Output: Hello
  */
  -- Example :
   select first_name ,substr(first_name , 1,5)
   from employee_salary;
/*
3. CHAR_LENGTH() / LENGTH()
- Purpose:Returns the length of a string in characters.
- Syntax:CHAR_LENGTH(string) or LENGTH(string)
- Example:
  sql
  SELECT CHAR_LENGTH('Hello') AS Length;
  -- Output: 5
*/
select first_name ,last_name , length(first_name) AS LENGTH 
FROM employee_salary;

/*
4. UPPER() / LOWER()
- Purpose: Converts a string to uppercase or lowercase.
- Syntax:
  - UPPER(string)
  - LOWER(string)
- Example
  sql
  SELECT UPPER('hello') AS Uppercase, LOWER('WORLD') AS Lowercase;
  -- Output: Uppercase: HELLO, Lowercase: world
  */
  SELECT first_name , UPPER(first_name ) AS UPPERCASE, LOWER(first_name) as LOWERCASE 
  FROM employee_demographics;

/*
 5. TRIM()
- Purpose: Removes leading and trailing spaces from a string.
- Syntax: TRIM(string)
- Example:
  sql
  SELECT TRIM('   Hello   ') AS Trimmed;
  -- Output: Hello
  */
  SELECT first_name ,TRIM(first_name)
  from  employee_salary;
  /*
 6. **LTRIM() / RTRIM()
- Purpose:
  - LTRIM(): Removes leading spaces.
  - RTRIM(): Removes trailing spaces.
- **Syntax**:
  - `LTRIM(string)`
  - `RTRIM(string)`
- Example:
  sql
  SELECT LTRIM('   Hello') AS LeftTrimmed, RTRIM('Hello   ') AS RightTrimmed;
  -- Output: LeftTrimmed: Hello, RightTrimmed: Hello
  
  
7. REPLACE()
- Purpose: Replaces occurrences of a substring within a string.
- Syntax: REPLACE(string, old_substring, new_substring)
- Example:
  sql
  SELECT REPLACE('Hello World', 'World', 'SQL') AS Result;
  -- Output: Hello SQL
  */
  select first_name, last_name , concat(first_name,' ', last_name)  as NAME , REPLACE( concat(first_name,' ', last_name) ,first_name, last_name) as REPLACED_FIRST_NAME
  from employee_demographics;
/*
8.POSITION() / LOCATE() / INSTR()
- Purpose: Finds the position of a substring within a string.
- Syntax:
  - POSITION(substring IN string)
  - LOCATE(substring, string)
  - INSTR(string, substring)
- Example:
 sql
  SELECT POSITION('World' IN 'Hello World') AS Position;
  -- Output: 7
*/ 
select first_name ,last_name, concat(first_name,' ', last_name)  as NAME,position(first_name IN  )
from employee_demographics;
/*
9. LEFT() / RIGHT()
- Purpose:
  - LEFT(): Returns the leftmost characters of a string.
  - RIGHT(): Returns the rightmost characters of a string.
- Syntax:
  - LEFT(string, length)
  - RIGHT(string, length)
- Example:
  sql
  SELECT LEFT('Hello World', 5) AS LeftPart, RIGHT('Hello World', 5) AS RightPart;
  -- Output: LeftPart: Hello, RightPart: World
  */
 -- EXAMPLE:
 select first_name, last_name , concat(first_name,' ', last_name)  as NAME,left( concat(first_name,' ', last_name) ,6)
  from employee_demographics;
  
 /* 
10. REVERSE()
-Purpose: Reverses the characters in a string.
- Syntax: REVERSE(string)
- Example:
  sql
  SELECT REVERSE('SQL') AS Reversed;
  -- Output: LQS
  */
 select first_name, last_name , concat(first_name,' ', last_name)  as NAME,REVERSE( concat(first_name,' ', last_name))
  from employee_demographics;
  
   /* 
11. FORMAT()
- Purpose: Formats a number as a string (with specified decimal places).
- Syntax: FORMAT(number, decimal_places)
- Example:
sql
  SELECT FORMAT(12345.6789, 2) AS FormattedNumber;
  -- Output: 12,345.68
 
 12. ASCII()
- Purpose: Returns the ASCII value of the first character in a string.
- Syntax: ASCII(string)
- Example:
  sql
  SELECT ASCII('A') AS ASCIIValue;
  -- Output: 65

13. CHAR()
- Purpose: Converts an ASCII value to its corresponding character.
- Syntax: CHAR(ascii_value)
- Example:
sql
  SELECT CHAR(65) AS Character;
  -- Output: A
  

14. SPACE()
-Purpose: Returns a string consisting of a specified number of spaces.
- Syntax: SPACE(number)
- Example:
sql
  SELECT CONCAT('Hello', SPACE(3), 'World') AS Result;
  -- Output: Hello   World
  

 15. REPEAT()
- Purpose: Repeats a string a specified number of times.
- Syntax: REPEAT(string, number)
- Example:
  sql
  SELECT REPEAT('SQL ', 3) AS RepeatedString;
  -- Output: SQL SQL SQL

16. LPAD() / RPAD()
- Purpose:
  - LPAD(): Pads the left side of a string with a specified character to a certain length.
  - RPAD(): Pads the right side of a string.
- Syntax:
  - LPAD(string, length, pad_string)
  - RPAD(string, length, pad_string)
- Example:
  sql
  SELECT LPAD('SQL', 5, '*') AS LeftPadded, RPAD('SQL', 5, '*') AS RightPadded;
  -- Output: LeftPadded: **SQL, RightPadded: SQL**


