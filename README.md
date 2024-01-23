# Project 2: ETL Mini Project

## Overview

This ETL mini project involved building an ETL pipeline using `Python`, `Pandas`, `Python list comprehension`, and `regex` to extract and transform data from `crowdfunding.xlsx` and `contacts.xlsx` files. The project process includes extracting data from excel files, transforming & importing them to CSV files, generating an ERD, designing table schemas, and then uploading the data into a Postgres database. Details of the processes are described as below.

Starter code and resource files were downloaded from [Project 2 ETL files](#) for this project.

Please reference the `Project File Guide` at the bottom of this README for help navigating this repository.

## Process

**See `ETL_Mini_Project.ipynb` for detailed code with notes for process parts 1-3.** /n
**See `Crowdfunding_Database` folder for creating the process part 4.**

### 1. Created the Category and Subcategory DataFrames

- Extracted and transformed `crowdfunding.xlsx` data to create 'category' and 'subcategory' DataFrames.
- Imported as CSV files `category.csv` and `subcategory.csv` respectively.

### 2. Created the Campaign DataFrame

- Extracted and transformed `crowdfunding.xlsx` data to create a 'campaign' DataFrame.
- Columns specified as per instructions.
- Imported as CSV file `campaign.csv`.

### 3. Created the Contacts DataFrame

Two 'contacts' Dataframe was created demonstrating methods for both `Pandas` (Option 1) and `regex` (Option 2).
(`Pandas` method is saved as `contacts.csv` and `regex` method is saved as `contacts_2.csv`.)

#### Option 1 (Python dictionary methods):

- Imported `contacts.xlsx` into a DataFrame.
- Converted each row to a dictionary.
- Extracted values from keys using `Python list comprehension`.
- Created a new DataFrame with extracted data.
- Columns specified as per instructions.
- Cleaned and exported as `contacts.csv`.

#### Option 2 (Regular Expressions):

  - Imported `contacts.xlsx` into a DataFrame.
  - Extracted "contact_id," "name," and "email" columns using 'regex'.
  - Created a new DataFrame with the extracted data.
  - Columns specified as per instructions.
  - Cleaned and exported as `contacts_2.csv`.

### 4. Created the Crowdfunding Database

- Inspected CSV files and sketched an ERD using QuickDBD:
  
![crowdfunding_erd](https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/38f8e9df-da82-4020-addd-50ab89faa59c)

- Created a table schema for each CSV file in a `crowdfunding_db_schema.sql` file.
- Created a Postgres database named `crowdfunding_db`.
- Used the schema to create tables in the correct order and appropriate primary/foreign keys and relationships established.
- Imported each CSV file into its corresponding SQL table:
  
![csv_imports_successful](https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/5e82ac5b-8dee-4d8b-9d78-ae1ae7a0a64e)

- Verified data correctness with `SELECT *` statements. Also downloaded output data as CSV files in '{table_name}_table.png' format. (Please refer to `final_tables` folder.):

<p align="center">
  <img src="https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/c4b9553b-739d-4c56-9602-90981a6c09d4" alt="Subcategory Table" width="200">
  <img src="https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/6c328262-a6fc-49d2-a1f2-cd3d3730fda3" alt="Contacts Table" width="200">
  <img src="https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/2bf28f6f-80a9-4c0f-8d80-653bcdd2ff89" alt="Category Table" width="200">
  <img src="https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/f1d6e06d-a391-4500-840c-a18ba262e16c" alt="Campaign Table" width="200">
</p>

## Project File Guide

`Starter_Files` :open_file_folder: contains all documents for this project.
- 📄`ETL_Mini_Project.ipynb`: all code for extract and transfrom processes.
- :open_file_folder:`Resources`: all generated CSV files from code (.csv) and original excel files (.xlsx).
    - :open_file_folder:`Crowdfunding_Database`: all files for the loading the DataFrame using `Postgres` and `pgAdmin4`.
        - 📄`crowdfunding_db_schema.sql`: all schemas for the tables and steps to created the `Crowdfunding Database`.
        - 📊`crowdfunding_erd.png`: ERD generated using `QuickDBD` website.
        - :open_file_folder:`final_tables`: all loaded tables .png and .csv versions.
        - :open_file_folder:`sql_data`: copies of generated CSV files from `ETL_Mini_Project.ipynb` with header removed for import into Database tables.
  

