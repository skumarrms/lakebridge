/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/13_masking_policy_salary.sql

    The following errors were found while transpiling:
      - [8:1] SNOWFLAKE: Databricks SQL has no equivalent to the CREATE MASKING POLICY command, and it cannot be translated
      - [15:1] Unexpected table alteration UnresolvedTableAlteration(COLUMN salary SET MASKING POLICY mask_salary,SNOWFLAKE: An error occurred while traversing the parse tree: The ALTER COLUMN variant was parsed, but is unknown to the SQL builders!,alterColumnClause,Some(COLUMN),Error)
*/
MASKING POLICY mask_salary AS (val NUMBER) RETURNS NUMBER ->
  CASE
    WHEN CURRENT_ROLE() IN ('HR_ROLE') THEN val
    ELSE NULL
  END;
ALTER TABLE
  employee
???;