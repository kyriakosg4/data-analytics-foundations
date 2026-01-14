# Crypto-API-Project

## Introduction
This project involves monitoring cryptocurrency prices over a specified period using a custom Python function. The data is sourced from CoinMarketCap's API. The project uses Jupyter Notebook for data analysis and visualization. The goal is to track price changes and gain insights into the cryptocurrency market.

## Project Overview

1. Setting Up the Environment
The project begins by importing necessary libraries and setting up the environment in Jupyter Notebook.

2. Creating the Function to Monitor Crypto Prices
A function is created to fetch cryptocurrency prices using the CoinMarketCap API. This function:

+ Connects to the API using the provided endpoint.
+ Normalizes the JSON response data using Pandas.
+ Saves the normalized data to a CSV file for further analysis.

3. Saving Data to CSV
Each time the function runs, it fetches the latest cryptocurrency data and appends it to a CSV file. This allows for historical data analysis and tracking changes over time. The csv created in my local disk

4. Reading and Exploring the Data in Jupyter
After collecting the data, it is read into Jupyter for exploration. The following steps are performed:

* Grouping and Analyzing Data
The data is grouped by cryptocurrency name.
Price changes are analyzed over various periods (1 hour to 30 days).

* Transforming Data
The stack function is used to transform the data frame.
The data frame is reset and restructured to facilitate correlation analysis.

* Columns are renamed for clarity and ease of use in plotting.
  
5. Data Visualization
The project leverages Seaborn and Matplotlib to create insightful visualizations. Specifically, a categorical plot (catplot) is generated to visualize the data.


### API Information
* API Provider: CoinMarketCap
* API Documentation: CoinMarketCap API Documentation
* API URL: CoinMarketCap API
  

# Conclusion
This project demonstrates how to use Python to monitor cryptocurrency prices using an API, store the data for analysis, and visualize the insights. By leveraging Pandas, Seaborn, and Matplotlib, we can gain valuable insights into cryptocurrency price movements over various time periods.


# Downloading Anaconda and Using Jupyter

Step 1: Download Anaconda:
Visit the official Anaconda website: Anaconda.com Choose the appropriate version (Python 3.x recommended) for your operating system (Windows, macOS, Linux). Click on the download button and follow the installation instructions provided for your operating system.

Step 2: Install Anaconda:
Once the download is complete, run the Anaconda installer. Follow the installation wizard instructions to install Anaconda on your system. During installation, you may choose to add Anaconda to your system PATH environment variable. This allows you to access Anaconda and its tools (including Jupyter) from the command line.

Step 3: Launch Jupyter Notebook:
After installation, you can launch Jupyter Notebook from the Anaconda Navigator or directly from the command line. To launch from Anaconda Navigator: Open Anaconda Navigator from the Start menu (Windows) or Launchpad (macOS). Click on the Jupyter Notebook icon under the "Home" tab. To launch from the command line: Open a terminal or command prompt. Type jupyter notebook and press Enter. This will start the Jupyter Notebook server and open your default web browser to the Jupyter interface.
