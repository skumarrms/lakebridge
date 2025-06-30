/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/10_dynamic_table_employee_changes.sql

    The following errors were found while transpiling:
      - [7:1] SNOWFLAKE: Databricks SQL has no equivalent to the CREATE DYNAMIC TABLE command, and it cannot be translated
*/
DYNAMIC TABLE employee_changes
TARGET_LAG = '1 minute'
WAREHOUSE = my_wh
AS
SELECT * FROM employee_stream;