import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import linregress
import numpy as np

def draw_plot():

     # Read data from file
    df = pd.read_csv('epa-sea-level.csv')

    # Create scatter plot
    plt.figure(figsize=(10, 4))
    plt.scatter(df['Year'], df['CSIRO Adjusted Sea Level'], label="Original Data")
    
    # Create first line of best fit for the entire dataset
    slope, intercept, r_value, p_value, std_err = linregress(df['Year'], df['CSIRO Adjusted Sea Level'])
    years_extended = np.arange(1880, 2051)
    sea_level_pred = slope * years_extended + intercept
    plt.plot(years_extended, sea_level_pred, 'r', linestyle='--', label='Best Fit Line 1880-2050')

    # Create second line of best fit from year 2000 onwards
    recent_data = df[df['Year'] >= 2000]
    slope_recent, intercept_recent, r_value_recent, p_value_recent, std_err_recent = linregress(recent_data['Year'], recent_data['CSIRO Adjusted Sea Level'])
    years_recent = np.arange(2000, 2051)
    sea_level_pred_recent = slope_recent * years_recent + intercept_recent
    plt.plot(years_recent, sea_level_pred_recent, 'blue', label='Best Fit Line 2000-2050')

    # Customize plot
    plt.title('Rise in Sea Level')
    plt.xlabel('Year')
    plt.ylabel('Sea Level (inches)')
    plt.xticks(np.arange(1850, 2100, 25))  # Set x-ticks from 1850 to 2075 with an interval of 25 years
    plt.xlim(1850, 2075)
    plt.legend()


    # Save plot and return data for testing (DO NOT MODIFY)
    plt.savefig('sea_level_plot.png')
    return plt.gca()

draw_plot()