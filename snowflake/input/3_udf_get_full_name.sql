-- UDF: Get Full Name
CREATE OR REPLACE FUNCTION get_full_name(first STRING, last STRING)
RETURNS STRING
LANGUAGE SQL
AS
$$
    first || ' ' || last
$$;
