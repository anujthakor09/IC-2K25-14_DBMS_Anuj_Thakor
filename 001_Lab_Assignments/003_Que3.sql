--Write a SQL statement to create a table named job_histry including columns employee_id, start_date
-- end_date, job_id and department_id and make sure that the value against column end_date will be entered at the time of insertion to the format like '--/--/----'.

CREATE TABLE job_history (

    employee_id INT,

    start_date DATE,

    end_date DATE,

    job_id VARCHAR(10),

    department_id INT

);



INSERT INTO job_history

VALUES (101, '2025-01-10', '2025-12-31', 'IT_PROG', 10);

-------------------------------------------------------------------------------------------------------------------------------\

 --Write a SQL statement to create a table named countries including columns country_id,country_name and region_id
   --and make sure that no duplicate data against column country_id will be allowed at the time of insertion.

CREATE TABLE countries (
    country_id INT UNIQUE,
    country_name VARCHAR(50),
    region_id INT
);

-------------------------------------------------------------------------------------------------------------------------------\

--Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary, and make sure that, the default value for
--job_title is blank and min_salary is 8000 and max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns.

CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(35) DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

-------------------------------------------------------------------------------------------------------------------------------\

-- Write a SQL statement to create a table named countries including columns country_id, country_name and region_id and make
   --sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion.
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    region_id INT
);

-------------------------------------------------------------------------------------------------------------------------------\

--Write a SQL statement to create a table countries including columns country_id, country_name and
--region_id and make sure that the combination of columns country_id and region_id will be unique.

CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    UNIQUE (country_id, region_id)
);


--Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table.

--Here is the structure of the table jobs;

+------------+--------------+------+-----+---------+-------+

| Field      | Type         | Null | Key | Default | Extra |

+------------+--------------+------+-----+---------+-------+

| JOB_ID     | varchar(10)  | NO   | PRI |         |       |

| JOB_TITLE  | varchar(35)  | NO   |     | NULL    |       |

| MIN_SALARY | decimal(6,0) | YES  |     | NULL    |       |

| MAX_SALARY | decimal(6,0) | YES  |     | NULL    |       |

+------------+--------------+------+-----+---------+-------+

CREATE TABLE job_history (
    employee_id INT UNIQUE,
    start_date DATE,
    end_date DATE,
    job_id VARCHAR(10),
    department_id INT,
    
    FOREIGN KEY (job_id)
    REFERENCES jobs(job_id)
);
