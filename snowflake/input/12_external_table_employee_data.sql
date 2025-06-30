-- External Table: Read from Stage
CREATE OR REPLACE EXTERNAL TABLE ext_employee_data (
    first_name STRING,
    last_name STRING,
    department STRING,
    salary NUMBER(10, 2)
)
WITH LOCATION = @my_stage/employee_data/
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY='"');
