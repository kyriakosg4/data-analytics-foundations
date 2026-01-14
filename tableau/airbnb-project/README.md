# Airbnb-Data-Visualization-Project


## Project Overview
This project analyzes Airbnb listings using a dataset from Kaggle. The analysis focuses on understanding the pricing and availability trends across different zip codes, bedrooms, and time periods. The final deliverable is an interactive dashboard in Tableau that presents the insights derived from the dataset.

## Dataset
The dataset used for this analysis can be found https://www.kaggle.com/alexanderfrebe.... It includes multiple sheets with information on Airbnb listings, such as price, zip code, number of bedrooms, and weekly revenue.

## Steps to Recreate the Project

1. Uploading the Excel File to Tableau
Open Tableau and connect to the Excel file containing the Airbnb dataset.
Drag and drop the "Listings" sheet onto the canvas.

2. Creating Relationships Between Sheets
With the "Listings" sheet open, create the necessary joins:
Drag and drop the remaining sheets onto the canvas.
Inner join the sheets based on common fields.
To verify the joins, use the "Data Source" tab and inspect the connections.

3. Developing the Visualizations
   
* Bar Chart: Average Price by Zip Code
Drag "Zip Code" to the Columns shelf.
Drag "Price" to the Rows shelf.
Change the aggregation of "Price" to "Average".
Customize the chart as needed.

* Map: Zip Codes and Average Prices
Use the auto-generated latitude and longitude fields provided by Tableau for the map visualization.

* Line Chart: Weekly Revenue Trends
Drag "Week" to the Columns shelf.
Drag "Revenue" to the Rows shelf.
Change the aggregation of "Revenue" to "SUM".
Customize the chart to show trends over weeks and highlight peak months.

* Bar Chart: Average Prices by Number of Bedrooms
Drag "Bedrooms" to the Columns shelf.
Drag "Price" to the Rows shelf.
Change the aggregation of "Price" to "Average".

* Table: Count of Airbnbs by Number of Bedrooms
Drag "Bedrooms" to the Rows shelf.
Drag "Id" to the Text shelf.
Change the aggregation to "COUNT".

5. Building the Dashboard
Create a new Dashboard in Tableau.
Drag and drop the charts created above onto the dashboard canvas.
Arrange and resize the charts to ensure clarity and usability.
Add filters and interactivity as needed to enhance user experience.

## Conclusion
This README file provides a step-by-step guide to recreating the Airbnb analysis project in Tableau. By following these instructions, you can visualize and analyze Airbnb data to uncover insights about pricing trends and listing characteristics.
