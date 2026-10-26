--Get the highest, lowest, sum, and average salary of all employees.

SELECT MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees;

--Get the number of employees with the same job.

----------------------------------------------------------------------------------
SELECT job_id,
       COUNT(*) AS number_of_employees
FROM employees
GROUP BY job_id;
----------------------------------------------------------------------------------
--Get the difference between the highest and lowest salaries.


SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;
----------------------------------------------------------------------------------
--Find the manager ID and the salary of the lowest-paid employee for that manager.


SELECT manager_id,
       MIN(salary) AS lowest_salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id;


