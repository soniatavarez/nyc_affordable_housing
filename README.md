# NYC Affordable Housing

Affordable Housing Production by Building Data from NYC Open Data:
https://data.cityofnewyork.us/Housing-Development/Affordable-Housing-Production-by-Building/hg8x-zxpr/about_data

This data lists housing projects for Housing New York or The Housing Blueprint. These two projects create and preserve affordable housing. The data lists projects since 2014.

### Folders
scripts: contains python script for ETL

documents: contains data dictionary, data pipeline, and data visualization

datawarehouse: contains datawarehouse sql script, dbschema files, and dimensional model.

### Known Issues

Duplicate tables were created in the public and affordable housing schema, dropped the tables in the affordable housing schema via DataGrip
