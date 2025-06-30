-- Task: Daily Bonus Trigger
CREATE OR REPLACE TASK daily_bonus_task
  WAREHOUSE = my_wh
  SCHEDULE = 'USING CRON 0 0 * * * UTC'
AS
CALL give_bonus('Engineering');
