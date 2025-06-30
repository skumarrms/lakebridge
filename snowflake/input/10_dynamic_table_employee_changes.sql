-- Dynamic Table: Sync with employee_stream
CREATE OR REPLACE DYNAMIC TABLE employee_changes
TARGET_LAG = '1 minute'
WAREHOUSE = my_wh
AS
SELECT * FROM employee_stream;
