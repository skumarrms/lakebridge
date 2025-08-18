import os
from pyspark.sql import SparkSession
from pyspark.sql.functions import col, concat_ws, coalesce, udf, lit
from pyspark.sql.types import LongType, DateType
from datetime import datetime

def parse_date(date_str, date_format):
    """
    Safely parse a date string with a given format.
    Returns a date object on success, None on failure.
    """
    try:
        return datetime.strptime(date_str, date_format).date()
    except (ValueError, TypeError):
        return None

def main():
    """
    Main function to run the data processing pipeline.
    """
    # Register the UDF
    parse_date_udf = udf(parse_date, DateType())

    # Get the project root directory
    project_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

    # Initialize Spark Session
    spark = SparkSession.builder \
        .appName("CustomerDataProcessing") \
        .config("spark.sql.extensions", "io.delta.sql.DeltaSparkSessionExtension") \
        .config("spark.sql.catalog.spark_catalog", "org.apache.spark.sql.delta.catalog.DeltaCatalog") \
        .getOrCreate()

    # Define file paths
    source_path = os.path.join(project_dir, "data/customer_data.csv")
    target_path = os.path.join(project_dir, "delta/customers")

    # Read source data
    source_df = spark.read.csv(source_path, header=True, inferSchema=True)

    # Apply transformations
    transformed_df = source_df.withColumn("customer_id", col("id").cast(LongType())) \
        .withColumn("customer_name", concat_ws(" ", col("first_name"), col("last_name"))) \
        .withColumn("customer_dob", coalesce(
            parse_date_udf(col("dob"), lit("%Y-%m-%d")),
            parse_date_udf(col("dob"), lit("%m/%d/%Y")),
            parse_date_udf(col("dob"), lit("%d-%b-%Y"))
        ))

    # Select final columns
    final_df = transformed_df.select("customer_id", "customer_name", "customer_dob")

    # Write to Delta table
    final_df.write.format("delta").mode("overwrite").save(target_path)

    print(f"Successfully processed data and wrote to Delta table at: {target_path}")

    # Stop the Spark session
    spark.stop()

if __name__ == "__main__":
    main()
