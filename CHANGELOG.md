# dbt_sap_source v0.1.0
🎉 Initial Release 🎉
- This is the initial release of this package. 

## 📣 What does this dbt package do?
This package is designed to enrich your Fivetran SAP data by doing the following:

- Cleans, tests, and prepares your SAP data from [Fivetran's connector](https://fivetran.com/docs/databases/sap-erp/sap-erp-hana) for analysis.
- Add descriptions to tables and columns that are synced using Fivetran.
- Add freshness tests to source data.
- Add column-level testing where applicable. For example, all primary keys are tested for uniqueness and non-null values.
- Model staging tables which leverage data which can then be used simultaneously with our [SAP modeling transformation package](https://github.com/fivetran/sap).
- Currently the package supports Postgres, Redshift, BigQuery, Databricks, and Snowflake. Additionally, this package is designed to work with dbt versions [">=1.3.0", "<2.0.0"].

For more information refer to the [README](https://github.com/fivetran/dbt_sap_source/blob/main/README.md).