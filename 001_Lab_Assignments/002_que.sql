-- Q9 CREATE A TABLE WHERE COUNTRY ID SHOULD NOT HAVE DUPLICATES
mysql> CREATE TABLE country(
    -> country_id INT NOT NULL UNIQUE,
    -> country_name VARCHAR(30) NOT NULL,
    -> region_id INT NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO country(country_id,country_name,region_id)
    -> VALUES
    -> (1,'India',1),
    -> (2,'America',2);
Query OK, 2 rows affected (0.04 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT*FROM country
    -> ;
+------------+--------------+-----------+
| country_id | country_name | region_id |
+------------+--------------+-----------+
|          1 | India        |         1 |
|          2 | America      |         2 |
+------------+--------------+-----------+
2 rows in set (0.06 sec)
---------------------------------------------------------------------------------------------
-- Que CREATE A TABLE COUNTRY WHERE THE COUNTRY NAME CAN ONLY BE ENTERED AS INDIA,CHINA,ITALY
mysql> CREATE TABLE country(
    -> country_name VARCHAR(30) NOT NULL,
    -> country_id INT NOT NULL UNIQUE,
    -> region_id INT NOT NULL,
    -> CHECK (country_name IN('India','China','Italy'))
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO country(country_name,country_id,region_id)
    -> VALUES
    -> ('India',1,1);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT*FROM country;
+--------------+------------+-----------+
| country_name | country_id | region_id |
+--------------+------------+-----------+
| India        |          1 |         1 |
+--------------+------------+-----------+
1 row in set (0.00 sec)

mysql> INSERT INTO country(country_name,country_id,region_id)
    -> VALUES
    -> ('Aus',2,2);
ERROR 3819 (HY000): Check constraint 'country_chk_1' is violated.

---------------------------------------------------------------------------------------------
