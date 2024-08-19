# Affordable Housing Production Analysis: A Data Warehousing and Analytics Project

This project was completed as part of my Data Warehousing and Analytics course. The main goal was to build an end-to-end data pipeline. The project involved sourcing data, creating an ETL (Extract, Transform, Load) pipeline, and visualizing the results using a business intelligence tool.
<img width="900" alt="n_a_h data pipeline" src="https://github.com/soniatavarez/nyc_affordable_housing/assets/159973059/6efec42b-c79b-42ec-b0ef-e8419c5318d2">

**Tools and Technologies Used:**
- DataGrip: For managing the PostgreSQL database and writing SQL queries.
- Azure Cloud Storage: For storing the raw data and ensuring accessibility.
- PostgreSQL: As the database management system for the data warehouse.
- DbSchema: For designing the data warehouse model with fact and dimension tables.
- Tableau: For creating visualizations and dashboards to present the analysis results.
- Python: For scripting the ETL pipeline.


## Project Steps

1. **Data Sourcing**: The dataset used in this project is the ["Affordable Housing Production by Building"](https://data.cityofnewyork.us/Housing-Development/Affordable-Housing-Production-by-Building/hg8x-zxpr/about_data) data from NYC Open Data. This dataset provides detailed information on affordable housing units produced in New York City, including location, number of units, and building information.

2. **Data Storage**:The data was stored in Azure Cloud Storage. This cloud-based solution allowed for data management throughout the project.

3. **Data Warehouse Design**: A data warehouse model was designed using DbSchema, using  both fact and dimension tables. 
  
4. **ETL Pipeline Development**: 
The ETL process was developed using Python scripts. The pipeline involved:
  - **Extracting** the data from the cloud storage.
  - **Transforming** the data to clean and format.
  - **Loading** the transformed data into a PostgreSQL database, which served as the foundation for the data warehouse.

5. **Data Visualization**: The final step involved loading the data into Tableau. The image below displays the dashboard created in Tableau.

<img width="900" alt="a_h_s data visualization" src="https://github.com/soniatavarez/nyc_affordable_housing/assets/159973059/5a4c07b6-4b07-4121-9bf3-1e4a0b116b8d">



