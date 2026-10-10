--Calculate the total salary payable to employees
SELECT SUM(salary) AS total_salary
FROM employees;

------------------------------------------------------------
--Find the maximum and minimum salary
SELECT MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary
FROM employees;

------------------------------------------------------------
--Find the average salary and number of employees
SELECT AVG(salary) AS average_salary,
       COUNT(*) AS total_employees
FROM employees;

------------------------------------------------------------
--Count the total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

------------------------------------------------------------
--Find the number of jobs available in the employees table
SELECT COUNT(DISTINCT job_id) AS total_jobs
FROM employees;

------------------------------------------------------------
