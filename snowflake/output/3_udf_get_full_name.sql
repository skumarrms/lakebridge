/*
    Failed transpilation of /workspaces/codespaces-blank/snowflake/input/3_udf_get_full_name.sql

    The following errors were found while transpiling:
      - [25:1] '$$' was unexpected while parsing a stringLiteral in a CREATE FUNCTION command in a CREATE command in a DDL command in a sqlCommands
expecting one of: 'String'
      - [20:1] PlanGenerationFailure: IllegalArgumentException, Expected a string literal, got UnresolvedExpression Parse error: '$$' was unexpected while parsing a stringLiteral in a CREATE FUNCTION command in a CREATE command in a DDL command in a sqlCommands
expecting one of: 'String'
parser recovered by ignoring: -> $$
    first || ' ' || last
$$ <-
, Unparsed input - ErrorNode encountered, expression, Error



    Parsing errors prevented the converter from translating the input query.
    We reproduce the input query unchanged below.

*/
-- UDF: Get Full Name
CREATE OR REPLACE FUNCTION get_full_name(first STRING, last STRING)
RETURNS STRING
LANGUAGE SQL
AS
$$
    first || ' ' || last
$$;
