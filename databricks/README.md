# Customer Data Processing Pipeline

This project demonstrates a simple data engineering pipeline using PySpark and Delta Lake to process customer data.

## Directory Structure

```
databricks/
├── data/
│   └── customer_data.csv   # Sample source data
├── delta/
│   └── customers/          # Output Delta table
├── src/
│   └── process_customers.py # PySpark script for data processing
└── README.md               # This file
```

## Setup

This project requires Python, PySpark, and Delta Lake.

1.  **Install PySpark and Delta Lake:**

    ```bash
    pip install pyspark delta-spark
    ```

## Running the Pipeline

To run the data processing pipeline, execute the following command from the root of the repository:

```bash
spark-submit databricks/src/process_customers.py
```

After the script runs, the transformed data will be saved as a Delta table in the `databricks/delta/customers` directory.
