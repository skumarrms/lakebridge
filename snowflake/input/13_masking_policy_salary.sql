-- Masking Policy: Salary Masking
CREATE OR REPLACE MASKING POLICY mask_salary AS (val NUMBER) RETURNS NUMBER ->
  CASE
    WHEN CURRENT_ROLE() IN ('HR_ROLE') THEN val
    ELSE NULL
  END;

-- Apply the masking policy
ALTER TABLE employee MODIFY COLUMN salary SET MASKING POLICY mask_salary;
