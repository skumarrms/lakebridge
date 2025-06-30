/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/12_external_table_employee_data.sql

    The following errors were found while transpiling:
      - [21:1] input is not parsable 'first_nameSTRING,last_nameSTRING,departmentSTRING,salaryNUMBER(10,2))'
      - [15:1] SNOWFLAKE: The transpiler cannnot currently convert the CREATE EXTERNAL TABLE command, but may be able to do so in the future
      - [21:17] SNOWFLAKE: An error occurred while traversing the parse tree: This command was parsed, but is unknown to the SQL builders!
      - [21:30] Unparsed input - ErrorNode encountered


    Parsing errors prevented the converter from translating the input query.
    We reproduce the input query unchanged below.

*/
-- External Table: Read from Stage
CREATE OR REPLACE EXTERNAL TABLE ext_employee_data (
    first_name STRING,
    last_name STRING,
    department STRING,
    salary NUMBER(10, 2)
)
WITH LOCATION = @my_stage/employee_data/
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY='"');
