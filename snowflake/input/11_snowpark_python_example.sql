-- Snowpark Python Example (for reference only - run in Snowflake Python worksheet)
import snowflake.snowpark as snowpark

def main(session: snowpark.Session):
    df = session.table("employee")
    high_salary_df = df.filter(df["salary"] > 100000)
    high_salary_df.show()
    return high_salary_df
