mysql> CREATE DATABASE assignment_1;
Query OK, 1 row affected (0.07 sec)

mysql> use assignment_1
Database changed
mysql> CREATE TABLE Countries(
    -> country_id int,
    -> country_name VARCHAR(30),
    -> region_id int
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> SELECT * FROM Countries;
Empty set (0.08 sec)

mysql> INSERT INTO Countries(country_id,country_name,region_id)
    -> VALUES
    -> (1,'INDIA',1),
    -> (2,'USA',2),
    -> (3,'JAPAN',3)
    -> ;
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | INDIA        |         1 |
|          2 | USA          |         2 |
|          3 | JAPAN        |         3 |
+------------+--------------+-----------+
3 rows in set (0.00 sec)
--------------------------------------------------------------------------------------------------------
mysql> --QUESTION 2

mysql> show tables;
+------------------------+
| Tables_in_assignment_1 |
+------------------------+
| countries              |
+------------------------+
1 row in set (0.01 sec)

mysql> CREATE TABLE dup_countries
    -> LIKE countries;
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT * FROM dup_countries;
Empty set (0.01 sec)

mysql> -- we used like to copy all the columns of countries to dup_countries
---------------------------------------------------------------------------------------------------------

mysql> -- WRITE A SQL STATEMENT TO CREATE STRUCTURE OF TABLE dup_countries INCLUDING THE DATA
mysql> INSERT INTO dup_countries
    -> SELECT * FROM Countries;
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM dup_countries;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | INDIA        |         1 |
|          2 | USA          |         2 |
|          3 | JAPAN        |         3 |
+------------+--------------+-----------+
3 rows in set (0.00 sec)

---------------------------------------------------------------------------------------------------------

mysql> -- Que 3 : WRITE SQL STATEMENT TO SET THE CONSTRAINTS TO NULL.
mysql>
mysql> ALTER TABLE Countries
    -> MODIFY country_id INT NULL,
    -> MODIFY country_name VARCHAR(30) NULL,
    -> MODIFY region_id INT NULL;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

-----------------------------------------------------------------------------------------------------------
-- Que 4 :- write a sql statement to create a table job and insert columns, and check id the salary exceeds the upper limit 25000
    
mysql> CREATE TABLE jobs (
    ->     job_id INT PRIMARY KEY NOT NULL,
    ->     job_title VARCHAR(30) NOT NULL,
    ->     min_salary INT NOT NULL,
    ->     max_salary INT NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
    -> VALUES
    -> (01,'SDE',15000,25000),
    -> (02,'Data scientist',19000,26000),
    -> (03,'Data scientist',14000,24000)
    -> ;
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> desc jobs;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| job_id     | int         | NO   | PRI | NULL    |       |
| job_title  | varchar(30) | NO   |     | NULL    |       |
| min_salary | int         | NO   |     | NULL    |       |
| max_salary | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM jobs;
+--------+----------------+------------+------------+
| job_id | job_title      | min_salary | max_salary |
+--------+----------------+------------+------------+
|      1 | SDE            |      15000 |      25000 |
|      2 | Data scientist |      19000 |      26000 |
|      3 | Data scientist |      14000 |      24000 |
+--------+----------------+------------+------------+
3 rows in set (0.00 sec)

mysql> ALTER TABLE jobs
    -> ADD CONSTRAINT chk_max_salary
    -> CHECK (max_salary <= 25000);

mysql> UPDATE jobs
    -> SET max_salary = 25000
    -> WHERE job_id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM jobs;
+--------+----------------+------------+------------+
| job_id | job_title      | min_salary | max_salary |
+--------+----------------+------------+------------+
|      1 | SDE            |      15000 |      25000 |
|      2 | Data scientist |      19000 |      25000 |
|      3 | Data scientist |      14000 |      24000 |
+--------+----------------+------------+------------+
3 rows in set (0.00 sec)
