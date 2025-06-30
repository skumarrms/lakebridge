/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/14_tag_classification.sql

    The following errors were found while transpiling:
      - [8:1] SNOWFLAKE: Databricks SQL has no equivalent to the CREATE TAG command, and it cannot be translated
      - [11:1] Unexpected table alteration UnresolvedTableAlteration(COLUMN salary SET TAG classification = 'Confidential',SNOWFLAKE: An error occurred while traversing the parse tree: The ALTER COLUMN variant was parsed, but is unknown to the SQL builders!,alterColumnClause,Some(COLUMN),Error)
*/
TAG classification COMMENT = 'Data Classification';
ALTER TABLE
  employee
???;