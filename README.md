# Tokyo-Olympic-Data-Pipeline-and-Analysis

## Description
A data pipeline and analysis with ADF,ADLS Gen2, Databricks, Synapse Analytics, Tableau and much more!

### Objective

This initiative encompasses the extraction of Tokyo Olympics data from REST APIs and the subsequent publication of this data onto Azure Data Lake Gen 2. Following this, an ETL Pipeline will be employed to conduct transformations utilizing a medallion architecture, facilitated by Databricks PySpark scripts. The transformation process incorporates modeling the data into a Snowflake schema. For creating a data model, the serverless Synapse Analytics feature is utilized. Finally, SQL Analytics queries are executed to fetch the required data for visualization on a Tableau dashboard. The goal of data orchestration is achieved through Azure Data Factory.

### Architecture

![Architecture](https://github.com/neelpdesai/Tokyo-Olympic-Data-Pipeline-and-Analysis/assets/137664550/66a4c1f1-cc94-40d8-8f09-d10390d34616)

### Data Factory Pipeline

![ADF_Data_Pipeline](https://github.com/neelpdesai/Tokyo-Olympic-Data-Pipeline-and-Analysis/assets/137664550/10308579-ee59-42a1-b776-efe795740ab0)

### Data Visualization

![Tokyo_Olympics_Dashboard](https://github.com/neelpdesai/Tokyo-Olympic-Data-Pipeline-and-Analysis/assets/137664550/71acf4ec-9a83-4d8d-95e4-a468ae78c882)


### Tools & Technologies

- Cloud - [**Microsoft Azure**](https://azure.microsoft.com/)
- Stream Ingestion - [**Azure Event Hub**](https://azure.microsoft.com/en-ca/products/event-hubs)
- Orchestration - [**Azure Data Factory**](https://azure.microsoft.com/en-ca/products/data-factory)
- Transformation - [**Azure Databricks**](https://azure.microsoft.com/en-ca/products/databricks)
- Data Lake - [**Azure Data Lake Gen2**](https://azure.microsoft.com/en-ca/products/storage/data-lake-storage)
- Data Warehouse - [**Azure Synapse Analytics**](https://azure.microsoft.com/en-ca/products/synapse-analytics)
- Data Visualization - [**Tableau**](https://www.tableau.com/)
- Language - [**Python**](https://www.python.org)

