/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/7_sequence_employee_seq.sql

    The following errors were found while transpiling:
      - [18:41] missing 'CLONE' at 'START'
while parsing a CLONE AT/BEFORE clause in a CREATE OBBJECT CLONE clause in a CREATE command in a DDL command in a sqlCommands
      - [18:47] unexpected extra input '=' while parsing a sqlFile
expecting one of: End of batch, Select Statement, Statement, '(', 'BULK', 'CALL', 'COMMENT', 'CONTRACT', 'DBCC', 'DISABLE', 'ENABLE', 'GET'...
      - [17:1] Unparsed input - ErrorNode encountered
      - [18:143] SNOWFLAKE: Databricks SQL has no equivalent to the CREATE OBJECT CLONE command, and it cannot be translated


    Parsing errors prevented the converter from translating the input query.
    We reproduce the input query unchanged below.

*/
-- Sequence: Employee Sequence
CREATE OR REPLACE SEQUENCE employee_seq START = 1 INCREMENT = 1;
