--Display first name and last name using aliases "First Name" and "Last Name"

SELECT first_name AS 'First Name',
       last_name AS 'Last Name'
FROM employees;


--Get unique department IDs from employees
SELECT DISTINCT department_id
FROM employees;

--Display all employee details ordered by first name in descending order
SELECT *
FROM employees
ORDER BY first_name DESC;

--Display first name, last name, salary and PF
SELECT first_name,
       last_name,
       salary,
       salary * 0.15 AS PF
FROM employees;

--Display employee ID, names and salary in ascending salary order

SELECT employee_id,
       first_name,
       last_name,
       salary
FROM employees
ORDER BY salary ASC;
