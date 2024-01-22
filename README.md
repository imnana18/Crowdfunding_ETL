# Project 2: ETL Mini Project

## Overview

This ETL mini project involved building an `ETL pipeline` using `Python`, `Pandas`, `Python list comprehension`, and `regex` to extract and transform data from `crowdfunding.xlsx` and `contacts.xlsx` files. The project required extracting data from .xlsx files, transforming & importing data to CSV files, generating an ERD, designing table schemas, and then uploading the data into a Postgres database.

Starter code and resource files were downloaded from [Project 2 ETL files](#) for this project.

## Process

### 1. Created the Category and Subcategory DataFrames

- Extracted and transformed `crowdfunding.xlsx` data to create 'category' and 'subcategory' DataFrames.
- Imported as CSV files `category.csv` and `subcategory.csv` respectively.

### 2. Created the Campaign DataFrame

- Extracted and transformed `crowdfunding.xlsx` data to create a 'campaign' DataFrame.
- Imported as CSV file `campaign.csv`.

### 3. Created the Contacts DataFrame

Same 'contacts' Dataframe was created demonstrating methods for both `Pandas` (Option 1) and `regex` (Option 2).

#### Option 1 (Python dictionary methods):

- Imported `contacts.xlsx` into a DataFrame.
- Converted each row to a dictionary.
- Extracted values from keys using `Python list comprehension`.
- Created a new DataFrame with extracted data.
- Cleaned and exported as `contacts.csv`.

#### Option 2 (Regular Expressions):

  - Imported `contacts.xlsx` into a DataFrame.
  - Extracted "contact_id," "name," and "email" columns using 'regex'.
  - Created a new DataFrame with the extracted data.
  - Converted column types.
  - Cleaned and exported as `contacts_2.csv`.

### 4. Created the Crowdfunding Database

- Inspected CSV files and sketched an ERD using QuickDBD:
![crowdfunding_erd](https://github.com/imnana18/Crowdfunding_ETL/assets/147445115/38f8e9df-da82-4020-addd-50ab89faa59c)

- Created a table schema for each CSV file in a "crowdfunding_db_schema.sql" file.
- Created a Postgres database named "crowdfunding_db."
- Used the schema to create tables in the correct order.
- Verified table creation with SELECT statements.
- Imported each CSV file into its corresponding SQL table.
- Verified data correctness with SELECT statements.

## Hints

- Utilized Pandas methods for data manipulation.
- Referred to provided hints for specific tasks.

## Support and Resources

- Sought assistance from the instructional team, learning assistants, and tutors as needed during classes and office hours.

## Requirements

**Category DataFrame (15 points):**
- "category_id" column sequential from "cat1" to "catn."
- "category" column with only category titles.
- Exported as "category.csv."

**Subcategory DataFrame (15 points):**
- "subcategory_id" column sequential from "subcat1" to "subcatn."
- "subcategory" column with only subcategory titles.
- Exported as "subcategory.csv."

**Campaign DataFrame (30 points):**
- Columns specified as per instructions.
- "campaign.csv" file exported.

**Contacts DataFrame (15 points):**
- Columns specified as per instructions.
- "contacts.csv" file exported.

**Crowdfunding Database (25 points):**
- "crowdfunding_db_schema.sql" was created.
- "crowdfunding_db" was created using the schema.
- Appropriate primary and foreign keys and relationships were established in the database.
- Each CSV file was imported without errors.
- Data was displayed correctly using SELECT * statements.
