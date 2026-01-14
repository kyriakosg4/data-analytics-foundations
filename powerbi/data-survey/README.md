# Data-Professional-Survey

## Project Overview

### Introduction
This project involves the creation of an insightful Power BI dashboard based on a comprehensive survey conducted within the data field. The survey aimed to gather and analyze responses from individuals working in various data-related roles, focusing on several key areas of interest. The primary objective of this dashboard is to present the survey findings in an interactive and visually appealing manner, allowing stakeholders to quickly grasp important insights about the participants' experiences and preferences.

## Objectives

The main goals of the project were to:

1. Visualize Participation: Show the total number of survey respondents.
2. Profile Respondents: Provide demographic and professional information about the participants, including their positions in the data field.
3. Assess Job Satisfaction: Gauge participants' satisfaction with their work-life balance.
4. Evaluate Compensation: Present data on salary ranges and satisfaction with compensation.
5. Highlight Programming Preferences: Identify the most popular programming languages among respondents.


## Steps followed

* Step 1: Load data into Power BI Dekstop, dataset is a xlsx file
* Step 2: Transform Data:
  + Delete empty and unnecessary columns to clean the dataset.
  + Split columns to reduce the options in specific columns, making the data clearer and more manageable (Home -> Split Columns).
  + Duplicate the salary column and split it into digit and non-digit components to facilitate average salary calculation (Right Click -> 
    Duplicate Column).
  + Create Custom Columns: Use the custom column feature to create a column based on the average salary.
* Step 3: Build Visuals:
  + Cards: Create two card visuals to display the average age of the survey participants and the total number of respondents.
  + Treemap: Create a treemap to visualize the countries of the survey participants.
  + Donut Chart: Use a donut chart to illustrate the difficulty levels faced by individuals breaking into the data field.
  + Stacked Bar Chart: Develop a stacked bar chart to show the favorite programming languages based on each data position.
  + Clustered Column Chart: Create a clustered column chart to display the average salary for each data position.
  + Gauge Charts: Build two gauge charts to depict the happiness rates based on salary and work-life balance.



## Conclusion

The Power BI dashboard serves as a powerful tool for visualizing and analyzing the survey data, providing valuable insights into the experiences and preferences of individuals working in the data field. It enables stakeholders to make informed decisions based on the data-driven findings presented in the dashboard.




















