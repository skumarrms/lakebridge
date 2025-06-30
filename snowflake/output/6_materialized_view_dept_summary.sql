/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/6_materialized_view_dept_summary.sql

    The following errors were found while transpiling:
      - [7:1] SNOWFLAKE: The transpiler cannnot currently convert the CREATE MATERIALIZED VIEW command, but may be able to do so in the future
*/
MATERIALIZED VIEW dept_salary_summary AS
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;