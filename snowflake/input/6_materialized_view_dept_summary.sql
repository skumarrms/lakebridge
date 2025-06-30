-- Materialized View: Department Salary Summary
CREATE OR REPLACE MATERIALIZED VIEW dept_salary_summary AS
SELECT department, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;
