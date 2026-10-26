--List the number of jobs available in the employees table.


SELECT COUNT(DISTINCT job_id) AS number_of_jobs
FROM employees;
-------------------------------------------------------------
--Get the total salaries payable to employees.

SELECT SUM(salary) AS total_salary
FROM employees;
-------------------------------------------------------------
--Get the minimum salary from the employees table.

SELECT MIN(salary) AS minimum_salary
FROM employees;
-------------------------------------------------------------
--Get the maximum salary of an employee working as a Programmer.


SELECT MAX(salary) AS maximum_salary
FROM employees
WHERE job_id = 'Programmer';
-------------------------------------------------------------
--Get the average salary and number of employees working in department 90.


SELECT AVG(salary) AS average_salary,
       COUNT(*) AS number_of_employees
FROM employees
WHERE department_id = 90;
