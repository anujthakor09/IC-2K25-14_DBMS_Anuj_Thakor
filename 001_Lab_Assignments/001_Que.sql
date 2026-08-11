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
    -> (1,'INDIA',1)
    -> ,
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
