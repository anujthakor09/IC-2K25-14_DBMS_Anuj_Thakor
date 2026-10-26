--Get the length of employee names (first_name, last_name)  

SELECT
    first_name,
    LENGTH(first_name) AS first_name_length,
    last_name,
    LENGTH(last_name) AS last_name_length
FROM employees;
------------------------------------------------------

--Check whether first_name fields contain numbers  

SELECT first_name
FROM employees
WHERE first_name REGEXP '[0-9]';
------------------------------------------------------

--Select the first 10 records from a table

SELECT *
FROM employees
LIMIT 10;
------------------------------------------------------
--Calculate monthly salary, rounded to 2 decimal places

SELECT
    employee_id,
    first_name,
    last_name,
    ROUND(salary / 12, 2) AS monthly_salary

  ------------------------------------------------------
FROM employees;
