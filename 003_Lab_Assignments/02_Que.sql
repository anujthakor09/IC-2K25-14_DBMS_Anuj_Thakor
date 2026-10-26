--Programmers or Shipping Clerks whose salary is not $4,500, $10,000, or $15,000


SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('Programmer', 'Shipping Clerk')
  AND salary NOT IN (4500, 10000, 15000);
------------------------------------------------------------------------------------
--Employees whose last name has exactly six characters


SELECT last_name
FROM employees
WHERE last_name LIKE '______';
-----------------------------------------------------------------------------------
--Employees whose last name has e as its third character  


SELECT last_name
FROM employees
WHERE last_name LIKE '__e%';
-----------------------------------------------------------------------------------
--Display the jobs/designations available in the employees table


SELECT DISTINCT job_id
FROM employees;
-----------------------------------------------------------------------------------

--Display employee names, salary, and PF (15% of salary)


SELECT first_name,
       last_name,
       salary,
       salary * 0.15 AS PF
FROM employees;
-----------------------------------------------------------------------------------

--Display all records for employees whose last name is BLAKE, SCOTT, KING, or FORD


SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
