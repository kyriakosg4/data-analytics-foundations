# COVID-19 Deaths and Vaccinations Analysis

## Overview

This project analyzes COVID-19 deaths and vaccinations data in MySQL. The goal is to gain insights into the correlation between vaccination rates and COVID-19 death rates across different regions. The analysis involves data processing, cleaning, and querying using SQL.

## Data Preparation

Tables Creation
Two tables were created: covid_vac and covid_deaths. All columns containing numeric data were set to the text datatype to address compatibility issues with MySQL.

## Data Import
The MySQL command-line client was utilized for importing data into MySQL due to its speed and ease of use.

Specifically we needed to do the below:
1. Add password
2. Select the database we already created in MySQL
3. Load the data to the existing table following the below code
   ->LOAD DATA local INFILE "C:/Users/User/Desktop/Alex Data Analyst Bootcamp/Sql/Excel/covidDeaths.csv"
   ->INTO TABLE covid_deaths
   ->FIELDS TERMINATED BY ',' 
   ->ENCLOSED BY '"'
   ->LINES TERMINATED BY '\n'
   ->IGNORE 1 ROWS;


## Updating and Altering the Tables

Handling Empty Spaces: Empty spaces in the data were replaced with null values using a case condition.
Column Datatype Correction: Columns were altered to correct datatypes for accurate data representation.


## Data Exploration
The following analyses were conducted:

+ Total Cases vs Total Deaths
Comparison of total cases and total deaths, both in absolute numbers and per population, particularly focusing on the United States.

+ Countries with Highest Infection Rate and Deaths
Identification of countries with the highest infection rates and death tolls using the MAX function.

+ Death Percentage Calculation
Calculation of the death percentage for each date using the SUM function and division of the sum of new deaths by the sum of new cases.

+ Vaccination Percentage
Two methods were employed (CTE and a temporary table) to calculate the percentage of people vaccinated per population.


## Conclusion

Through this SQL analysis, valuable insights into the spread of COVID-19 and the progress of vaccination efforts were gained. The findings contribute to a better understanding of the pandemic's impact on different regions and populations. Further analyses and visualizations can be conducted based on the insights obtained from this project.


