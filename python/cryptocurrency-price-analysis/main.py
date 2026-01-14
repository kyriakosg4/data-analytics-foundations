# import the libraries that are going to be used 

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


# DataFrame 
df = pd.read_csv(r"C:\Users\User\Desktop\FreeCodeCamp\Excel\btc-eth-prices-outliers.csv", parse_dates=True,
                 index_col = 0)
df.head()


# Visual inspection
# Outliers and null values exist

df.ion()
df.plot()


# check for na vlaues 
# Ethereum column contains null values

df['Ether'].isna().any()
df['Bitcoin'].isna().any()


# Detect the rows that contain null

df.loc[df['Ether'].isna()]


# Plot the specific area that null values exist

df['2017-12-01':'2018-01-01'].plot()


# replace the values using the backward filling method

df.bfill(inplace=True)


# confirm if it is now appropriate
df['Ether'].isna().any()


# Find the outliers 

df['2017-12-10':'2018-01-10'].plot()
df['2018-02-10':'2018-03-10'].plot()


# drop these specific dates

df_clean = df.drop(['2017-12-28', '2018-03-04'], axis = 0)


# plot the final cleaned data frame

df_clean.plot()


# maximum value of each cryptocurrency 

df_clean['Bitcoin'].max()
df_clean['Ether'].max()


# histogram which shows how the prices are distributed

fig = plt.figure(figsize = (12,6))

ax1 = fig.add_subplot(1,2,1)
ax1.hist(df_clean['Bitcoin'], bins = 150, color = 'red', edgecolor = 'blue')
ax1.set_xlim(0,20000)
ax1.set_title('Bitcoin')

ax2 = fig.add_subplot(1,2,2)
ax2.hist(df_clean['Ether'], bins = 150, color = 'green', edgecolor = 'yellow')
ax2.set_xlim(0,1500)
ax2.set_title('Ethereum')


# distplot from seaborn library for data distribution observation

fig, (ax1,ax2) = plt.subplots(nrows=1, ncols=2, figsize = (10,6))

sns.histplot(df_clean['Bitcoin'], kde =True, ax = ax1)
sns.histplot(df_clean['Ether'], kde = True, ax = ax2)


# another way for understanding the data distribution (kde and rug plot)
# Bitcoin 

fig, ax = plt.subplots(figsize = (10,6))

sns.kdeplot(df_clean['Bitcoin'], shade = True, cut = 0, ax = ax)
sns.rugplot(df_clean['Bitcoin'], ax = ax)
ax.set_xlim(0,20000)


# distribution of data by making the plot cumulative
# shows the density and frequency 

plt.figure(figsize=(10,6))

sns.distplot(df_clean['Bitcoin'],
             hist_kws = dict(cumulative = True),
             kde_kws=dict(cumulative = True))


# another way 

plt.figure(figsize=(10,6))

sns.histplot(df_clean['Bitcoin'], cumulative = True, kde = True)

# For Ethereum

plt.figure(figsize=(10,6))

sns.distplot(df_clean['Ether'],
             hist_kws = dict(cumulative = True),
             kde_kws=dict(cumulative = True))


# jointplot

sns.jointplot(x = 'Bitcoin', y = 'Ether', data = df_clean, size = 9)


# linear regression plot

sns.regplot(x = 'Bitcoin', y = 'Ether', data = df_clean)


# find the 20th percentile price 
# intersection technique to see how different percentiles align with their respective cumulative densities.

fig, ax = plt.subplots(figsize = (10,6))

sns.distplot(df_clean['Bitcoin'], ax = ax,
            hist_kws = dict(cumulative = True),
            kde_kws = dict(cumulative = True))

ax.axvline(df_clean['Bitcoin'].quantile(.2), color = 'red')
ax.axhline(0.2, color = 'red')


# variance and standard deviation values from the initial and final data frame for Bitcoin

df['Bitcoin'].var()
df_clean['Bitcoin'].var()

df['Bitcoin'].std()
df_clean['Bitcoin'].std()


# The Interquartile range is a good measure of "centered" dispersion, and is calculated as Q3 - Q1 
# (3rd quartile - 1st quartile).

df['Bitcoin'].quantile(.75) - df['Bitcoin'].quantile(.25)
df_clean['Bitcoin'].quantile(.75) - df_clean['Bitcoin'].quantile(.25)


# apply a common statistical rule (Empirical rule or 68-95-99.7 rule)

upper_limit = df['Bitcoin'].mean() + 2*df['Bitcoin'].std()
lower_limit = df['Bitcoin'].mean() - 2*df['Bitcoin'].std()

print(f"Upper limit: {upper_limit}")
print(f"Lower limit: {lower_limit}")


# use the results into the plot 

fig, ax = plt.subplots(figsize = (10,6))

sns.distplot(df['Bitcoin'], ax = ax)
ax.axvline(upper_limit, color = 'red')
ax.axvline(lower_limit, color = 'red')

# Comment: Seems like this is a good measurement. Our lower limit doesn't make a lot of sense, as negative
# values are invalid. But our upper limit has areally good measure. Anything above $27,369 is considered to
# be an invalid value. Pretty accurate.


# apply a statistical rule based on the iqr 

iqr = df['Bitcoin'].quantile(.75) - df['Bitcoin'].quantile(.25)

upper_limit = df['Bitcoin'].mean() + 2 * iqr
lower_limit = df['Bitcoin'].mean() - 2 * iqr

print("Upper limit: {}".format(upper_limit))
print("Lower limit: {}".format(lower_limit))


# plot the results 

fig, ax = plt.subplots(figsize = (10,6))

sns.distplot(df['Bitcoin'], ax = ax)
ax.axvline(upper_limit, color = 'red')
ax.axvline(lower_limit, color = 'red')

# Comment: Our measurement now is a little bit less precise. There are a few valid values (20k) that seem to
#  be above our upper limit. Regardless, it's still a good indicator.



# another way to visualize how typical prices of Bitcoin are distributed, by deifining again an upper limit 

upper_limit = df['Bitcoin'].mean() + 2 * df['Bitcoin'].std()

print(f"Upper Limit: {upper_limit}")

df.loc[df['Bitcoin'] < upper_limit].plot(figsize=(10,6))

df.drop(df.loc[df['Bitcoin'] > upper_limit].index, inplace = True)



