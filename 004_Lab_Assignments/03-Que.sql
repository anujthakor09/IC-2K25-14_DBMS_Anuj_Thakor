--Get the department ID and total salary payable in each department.


SELECT department_id,
       SUM(salary) AS total_salary
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id;
------------------------------------------------------------------
--Get the average salary for each job ID, excluding Programmer.

SELECT job_id,
       AVG(salary) AS average_salary
FROM employees
WHERE job_id <> 'Programmer'
GROUP BY job_id;
------------------------------------------------------------------
--Get total, maximum, minimum, and average salaries job-wise for department 90 only.


SELECT job_id,
       SUM(salary) AS total_salary,
       MAX(salary) AS maximum_salary,
       MIN(salary) AS minimum_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id = 90
GROUP BY job_id;
------------------------------------------------------------------
--Get the job ID and maximum salary of employees where the maximum salary is at least $4,000.


SELECT job_id,
       MAX(salary) AS maximum_salary
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;
------------------------------------------------------------------
--Get the average salary for all departments employing more than 10 employees.


SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
WHERE department_id IS NOT NULL
GROUP BY department_id
HAVING COUNT(*) > 10;
