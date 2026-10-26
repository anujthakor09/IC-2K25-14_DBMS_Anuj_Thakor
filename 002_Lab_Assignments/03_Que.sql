--Get the total salaries payable to employees

SELECT SUM(salary) AS total_salary
FROM employees;

--------------------------------------------------
--Get the maximum and minimum salary

SELECT
    MAX(salary) AS maximum_salary,
    MIN(salary) AS minimum_salary
FROM employees;
--------------------------------------------------
--Get the average salary and number of employees

SELECT
    AVG(salary) AS average_salary,
    COUNT(*) AS number_of_employees
FROM employees;
--------------------------------------------------
--Get the number of employees working with the company

SELECT COUNT(*) AS total_employees
FROM employees;

--------------------------------------------------
--Get the number of jobs available in the employees table

SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;
--------------------------------------------------
