 Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key columns combined by department_id and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.

Assume the structure of departments table below.

+-----------------+--------------+------+-----+---------+-------+

| Field           | Type         | Null | Key | Default | Extra |

+-----------------+--------------+------+-----+---------+-------+

| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |

| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |

| MANAGER_ID      | decimal(6,0) | NO   | PRI | 0       |       |

| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |

+-----------------+--------------+------+-----+---------+-------+

CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(8,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    FOREIGN KEY (department_id, manager_id)
    REFERENCES departments(department_id, manager_id)
);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.

"A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com

Assume that the structure of two tables departments and jobs.

+-----------------+--------------+------+-----+---------+-------+

| Field           | Type         | Null | Key | Default | Extra |

+-----------------+--------------+------+-----+---------+-------+

| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |

| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |

| MANAGER_ID      | decimal(6,0) | YES  |     | NULL    |       |

| LOCATION_ID     | decimal(4,0) | YES  |     | NULL    |       |

+-----------------+--------------+------+-----+---------+-------+

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | varchar(10)  | NO   | PRI |         |       |

| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |

| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+


CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(50),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(8,2),
    commission DECIMAL(8,2),
    manager_id DECIMAL(6,0),
    department_id DECIMAL(4,0),

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
)
ENGINE = InnoDB;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT.

Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 

JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 

MIN_SALARY decimal(6,0) DEFAULT 8000, 

MAX_SALARY decimal(6,0) DEFAULT NULL

)ENGINE=InnoDB;

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |

| JOB_TITLE  | varchar(35)  | NO   |     |         |       |

| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+

CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
)
ENGINE = InnoDB;



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE CASCADE that lets you allow to delete records in the employees(child) table that refer to a record in the jobs(parent) table when the record in the parent table is deleted and the ON UPDATE RESTRICT actions reject any updates.

Assume that the structure of the table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 

JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 

MIN_SALARY decimal(6,0) DEFAULT 8000, 

MAX_SALARY decimal(6,0) DEFAULT NULL

)ENGINE=InnoDB;

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |

| JOB_TITLE  | varchar(35)  | NO   |     |         |       |

| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+


CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
)
ENGINE = InnoDB;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE SET NULL action will set the foreign key column values in the child table(employees) to NULL when the record in the parent table(jobs) is deleted, with a condition that the foreign key column in the child table must accept NULL values and the ON UPDATE SET NULL action resets the values in the rows in the child table(employees) to NULL values when the rows in the parent table(jobs) are updated.

Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 

JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 

MIN_SALARY decimal(6,0) DEFAULT 8000, 

MAX_SALARY decimal(6,0) DEFAULT NULL

)ENGINE=InnoDB;

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |

| JOB_TITLE  | varchar(35)  | NO   |     |         |       |

| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+

CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT NULL,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
    ON DELETE SET NULL
    ON UPDATE SET NULL
)
ENGINE = InnoDB;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and any updates.

Assume that the structure of two table jobs and InnoDB Engine have been used to create the table jobs.

CREATE TABLE IF NOT EXISTS jobs ( 

JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 

JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 

MIN_SALARY decimal(6,0) DEFAULT 8000, 

MAX_SALARY decimal(6,0) DEFAULT NULL

)ENGINE=InnoDB;

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | int(11)      | NO   | PRI | NULL    |       |

| JOB_TITLE  | varchar(35)  | NO   |     |         |       |

| MIN_SALARY | decimal(6,0) | YES  |     | 8000    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+

CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),

    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

