-- DDL: Create Table
CREATE OR REPLACE TABLE employee (
    employee_id INT AUTOINCREMENT,
    first_name STRING,
    last_name STRING,
    department STRING,
    salary NUMBER(10, 2),
    hire_date DATE
);
