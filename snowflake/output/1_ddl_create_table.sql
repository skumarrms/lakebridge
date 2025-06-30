/*
    Successfully transpiled from /workspaces/codespaces-blank/snowflake/input/1_ddl_create_table.sql
*/
CREATE OR REPLACE TABLE employee (employee_id DECIMAL(38, 0) GENERATED ALWAYS AS IDENTITY, first_name VARCHAR(16777216) , last_name VARCHAR(16777216) , department VARCHAR(16777216) , salary DECIMAL(10, 2) , hire_date DATE );