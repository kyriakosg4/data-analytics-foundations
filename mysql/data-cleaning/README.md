# Data Cleaning Project 

Data Cleaning of a Dataset about layoffs with mySQL WorkBench

## Project Description

This beginner-level SQL project aims to clean and prepare data related to company layoffs for analysis. The data is sourced from an Excel file and imported into MySQL.

## Features
- Remove Duplicates
- Standarize the Data
- Null values or Blank values
- Remove any Columns

## Data Import
The MySQL command-line client was utilized for importing data into MySQL due to its speed and ease of use.

Specifically we needed to do the below:
1. Add password
2. Select the database we already created in MySQL
3. Load the data to the existing table following the below code
   ->LOAD DATA local INFILE "C:/Users/User/Desktop/Alex Data Analyst Bootcamp/Sql/Excel/covidDeaths.csv"
   ->INTO TABLE layoffs_staging
   ->FIELDS TERMINATED BY ',' 
   ->ENCLOSED BY '"'
   ->LINES TERMINATED BY '\n'
   ->IGNORE 1 ROWS;



## Installation

### Prerequisites

- MySQL (Download and install from [MySQL Downloads](https://dev.mysql.com/downloads/))
- A spreadsheet software like Microsoft Excel or Google Sheets to view the `.xlsx` file.

### Setup

1. **Clone the Repository:**
   ```bash
   git https://github.com/kyriakosg4/Data-Cleaning-Project.git
   cd global-company-layoffs
  
2. Database Setup:

Launch MySQL command line or MySQL Workbench.
Create a new database:
sql
Copy code
CREATE DATABASE layoffs_db;
USE layoffs_db;


