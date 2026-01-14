# Amazon-Web-Scraper-Project

## Introduction:
This project is a Python-based web scraping application designed to fetch and monitor the price of a T-shirt listed on Amazon. It utilizes the BeautifulSoup library for web scraping, the Requests library for HTTP requests, and other libraries such as smtplib, time, and datetime for additional functionalities.

## Project Overview:

1. Importing Libraries:

The project begins with importing necessary libraries including BeautifulSoup, Requests, smtplib, time, and datetime.

2. Connecting to Amazon Website:

A function is created to establish a connection with the Amazon website using the Requests library.

3. Scraping Price Data:

BeautifulSoup is utilized to extract the price of the T-shirt from the Amazon website. This information is then stored locally in a CSV file using the csv library, providing a convenient way to track price changes over time.


4. Automated Price Monitoring:

A while loop is implemented to continuously call the scraping function at regular intervals using the time library. This ensures that the price data remains up-to-date without manual intervention.


5. Price Change Notification:

Lastly, a function is developed to send a notification via email or other means whenever there is a change in the price of the T-shirt. This feature provides timely updates to the user, enabling informed purchasing decisions.


## Conclusion:
The Amazon Web Scraper project demonstrates the practical application of web scraping techniques in monitoring product prices on e-commerce platforms. By leveraging Python libraries such as BeautifulSoup and Pandas, users can automate the process of gathering and analyzing price data, ultimately facilitating smarter shopping decisions.


## Note:

The project can be further enhanced with features such as error handling, user input validation, and additional data analysis capabilities.
Ensure compliance with Amazon's terms of service and respect the website's policies while conducting web scraping activities.


## Downloading Anaconda and Using Jupyter

+ Step 1: Download Anaconda:

Visit the official Anaconda website: Anaconda.com
Choose the appropriate version (Python 3.x recommended) for your operating system (Windows, macOS, Linux).
Click on the download button and follow the installation instructions provided for your operating system.

+ Step 2: Install Anaconda:

Once the download is complete, run the Anaconda installer.
Follow the installation wizard instructions to install Anaconda on your system.
During installation, you may choose to add Anaconda to your system PATH environment variable. This allows you to access Anaconda and its tools (including Jupyter) from the command line.

+ Step 3: Launch Jupyter Notebook:

After installation, you can launch Jupyter Notebook from the Anaconda Navigator or directly from the command line.
To launch from Anaconda Navigator:
Open Anaconda Navigator from the Start menu (Windows) or Launchpad (macOS).
Click on the Jupyter Notebook icon under the "Home" tab.
To launch from the command line:
Open a terminal or command prompt.
Type jupyter notebook and press Enter.
This will start the Jupyter Notebook server and open your default web browser to the Jupyter interface.

