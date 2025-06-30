/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/9_task_daily_bonus.sql

    The following errors were found while transpiling:
      - [7:1] SNOWFLAKE: Databricks SQL has no equivalent to the CREATE TASK command, and it cannot be translated
*/
TASK daily_bonus_task
  WAREHOUSE = my_wh
  SCHEDULE = 'USING CRON 0 0 * * * UTC'
AS
CALL give_bonus('Engineering');