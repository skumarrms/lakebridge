-- View: Active Employees
CREATE OR REPLACE VIEW active_employees AS
SELECT employee_id, first_name, last_name, department, salary
FROM employee
WHERE salary > 50000;
