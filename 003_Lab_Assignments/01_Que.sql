--Employees whose salary is NOT between $10,000 and $15,000


SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;
-----------------------------------------------------------
--Employees in departments 30 or 100, in ascending order

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC;
-----------------------------------------------------------
--Employees outside the salary range who belong to department 30 or 100

SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000
  AND department_id IN (30, 100);
-----------------------------------------------------------
--Employees hired in 1987


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1987-01-01'
  AND hire_date < '1988-01-01';
-----------------------------------------------------------
--Employees whose first name contains both “b” and “c”


SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
  AND first_name LIKE '%c%';
