--Get all first names in uppercase

SELECT UPPER(first_name) AS first_name
FROM employees;
--------------------------------------------------
--Get the first 3 characters of each first name

SELECT SUBSTRING(first_name, 1, 3) AS first_three_characters
FROM employees;
--------------------------------------------------
--Calculate 171 × 214 + 625

SELECT 171 * 214 + 625 AS result;
--------------------------------------------------
--Display full employee names, such as Ellen Abel or Sundar Ande

SELECT CONCAT(first_name, ' ', last_name) AS employee_name
FROM employees;
--------------------------------------------------
--Get first names after removing whitespace from both sides

SELECT TRIM(first_name) AS first_name
FROM employees;
--------------------------------------------------
