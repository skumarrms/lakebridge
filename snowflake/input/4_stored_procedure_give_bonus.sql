-- Stored Procedure: Give Bonus
CREATE OR REPLACE PROCEDURE give_bonus(dept STRING)
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    UPDATE employee
    SET salary = salary * 1.10
    WHERE department = dept;

    RETURN 'Bonus Applied to Department: ' || dept;
END;
$$;

-- Call Example
-- CALL give_bonus('Engineering');
