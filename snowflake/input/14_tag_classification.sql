-- Tag: Classification Tag
CREATE OR REPLACE TAG classification COMMENT = 'Data Classification';

-- Assign tag to salary column
ALTER TABLE employee MODIFY COLUMN salary SET TAG classification = 'Confidential';
