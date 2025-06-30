/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/11_snowpark_python_example.sql

    The following errors were found while transpiling:
      - [16:27] 'as' was unexpected while parsing a sqlFile
expecting one of: End of batch, Select Statement, Statement, '(', 'BULK', 'CALL', 'COMMENT', 'CONTRACT', 'DBCC', 'DISABLE', 'ENABLE', 'GET'...
      - [15:1] Unparsed input - ErrorNode encountered
      - [23:29] SNOWFLAKE: The transpiler cannnot currently convert Execute body batch, but may be able to do so in the future


    Parsing errors prevented the converter from translating the input query.
    We reproduce the input query unchanged below.

*/
-- Snowpark Python Example (for reference only - run in Snowflake Python worksheet)
import snowflake.snowpark as snowpark

def main(session: snowpark.Session):
    df = session.table("employee")
    high_salary_df = df.filter(df["salary"] > 100000)
    high_salary_df.show()
    return high_salary_df
