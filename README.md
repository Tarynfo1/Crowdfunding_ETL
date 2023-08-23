# Crowdfunding Extract, Transform and Load project
***
### Project Summary
In this project an ETL pipeline was built using Python, Pandas and Python dictionary methods to extract and transform data of a crowdfunding dataset containing information on supporters and their pledging details to fund various personal campaigns and projects. This was converted to csv files and Python was used to extract and transform the data while SQL was used to load and query.


***
#### Tools/modules Required:
- Python
- Pandas
- Jupyter Notebook
- PostgreSQL
- json module
- datetime module
- PgAdmin4


***
#### Starter_Files:
- **Taryn_ETL_Mini_Project_Starter_Code.ipynb**: Part 1 of code - Crowdfunding data and pledging categories/subcategories data. For this section, Excel data was converted to a pandas DataFrame, the data type was checked and columns were split into lists and exported into a csv file for further analysis.

- **Sameer_Hooda_ETL_Mini_Project_Starter_Code.ipynb**: Part 2 of code - Dataframe containing clean campaign information<br> For this section, we copied the crowdfunding dataframe into campaign dataframe. After that we renamed the blurb,launched_at and deadline columns. Converted the datatype of goal and pledged columns. After that change the format of the date in launched_date and end_date and merged the dataFrame with category and sub category dataframe and exported as a csv file.

- **Mohamed_ETL_Mini_Project_Starter_Code.ipynb**: Part 3 of code - Dataframe containing contact information for campaign pledges<br>
Extracted and transformed the data from the contacts.xlsx Excel data Using Python dictionary methods.<br>
Splited each "name" column value into a first and last name, and placed each in a new column.<br>
Cleaned and exported the DataFrame as contacts.csv <br>

- **Crowdfunding_Db**:  - Inspected the four CSV files, and then sketched an ERD of the tables by using QuickDBD. <br>
  saved the data model image as QuickDBD-crowdfunding_db_schema.png. <br>
  saved the schema as QuickDBD-crowdfunding_db_schema.sql. <br>
  Created a new Postgres database, named crowdfunding_db. <br>
  Used QuickDBD-crowdfunding_db_schema.sql to create tables in the crowfunding_db. <br>
  Imported each CSV file into its corresponding SQL table using the COPY statement in the query tool.<br>
  saved the complete schema file as crowdfunding_db_schema.sql.<br>
  changed the security settings of the resource folder to evryone to use copy statment in query tool.<br>
  refrence : "https://stackoverflow.com/questions/54031813/i-am-trying-to-copy-a-file-but-getting-error-message" <br>
  verified tables creation and data importation using select * from table_name <br>

<br>


Extracted and transformed the data from the contacts.xlsx Excel data Using Python dictionary methods.<br>
Splited each "name" column value into a first and last name, and placed each in a new column.<br>
Cleaned and exported the DataFrame as contacts.csv <br>

#### - Resources
- campaign.csv --- outputfile<br>
- category.csv ---- ouptutfile<br>
- contacts.csv --- outputfile<br>
- contacts.xlsx --- inputfile<br>
- crowdfunding.xlsx --- inputfile<br>
- subcategory.csv --- outputfile<br>
