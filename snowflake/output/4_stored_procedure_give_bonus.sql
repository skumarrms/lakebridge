/*
    Successfully transpiled from /workspaces/codespaces-blank/snowflake/input/4_stored_procedure_give_bonus.sql
*/
CREATE OR REPLACE PROCEDURE give_bonus(IN dept VARCHAR(16777216))
LANGUAGE SQL
AS
BEGIN
  DECLARE result VARCHAR(16777216);
  early_return: BEGIN
    UPDATE
      employee
    SET
      salary = salary * 1.1
    WHERE
      department = dept;
    SET result = CONCAT('Bonus Applied to Department: ', dept);
    LEAVE early_return;
  END early_return;
  VALUES
    (result);
END;