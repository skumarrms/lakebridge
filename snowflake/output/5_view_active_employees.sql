/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/5_view_active_employees.sql

    The following errors were found while transpiling:
      - [7:1] SNOWFLAKE: The transpiler cannnot currently convert the CREATE VIEW command, but may be able to do so in the future
*/
VIEW active_employees AS
SELECT employee_id, first_name, last_name, department, salary
FROM employee
WHERE salary > 50000;