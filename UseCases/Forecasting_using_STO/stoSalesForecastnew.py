# #######################################################################################################################
# The code in the file gets input from Vantage table and creates prophet model and forecats sales using the forecast 
# function of the Prophet model. These forecasted values are passed back to Vantage when this script is called using the 
# Vantage Script command.
# #######################################################################################################################
# Import the necessary libraries
import sys
import numpy as np
import pandas as pd
import subprocess

# Prophet Library
from prophet import Prophet
import pickle
import base64
import sys, os

from contextlib import contextmanager
import logging
import datetime
# from datetime import date
from dateutil.relativedelta import relativedelta

logging.basicConfig(format='%(process)d-%(levelname)s-%(message)s')

# create a class which will be used to supress the output of the model.fit function
class suppress_stdout_stderr(object):
    """
    Filter out Prophet logs from stdout and stderr

    from https://stackoverflow.com/questions/11130156/suppress-stdout-stderr-print-from-python-functions
    Update: https://github.com/facebook/prophet/issues/223 randlet, 2017-09-31
    """
    def __init__(self):
        self.null_fds = [os.open(os.devnull, os.O_RDWR) for x in range(2)]
        self.save_fds = [os.dup(1), os.dup(2)]

    def __enter__(self):
        os.dup2(self.null_fds[0], 1)
        os.dup2(self.null_fds[1], 2)

    def __exit__(self, *_):
        os.dup2(self.save_fds[0], 1)
        os.dup2(self.save_fds[1], 2)
        for fd in self.null_fds + self.save_fds:
            os.close(fd)


###
### Read input
###
            
            
delimiter = '\t'
inputData = []

for line in sys.stdin.read().splitlines():
    line = line.split(delimiter)
    inputData.append(line)

###
### If no data received, gracefully exit rather than producing an error later.
###

if not inputData:
    sys.exit()

###
### Set up input DataFrame according to input schema
###

# Know your data: You must know in advance the number of incoming columns from the database!

columns = ['SlsID','Store','DayOfWeek', 'SalesDate', 'Sales', 'Customers', 'SalesOpen','Promo', 'StateHoliday',
       'SchoolHoliday']

df = pd.DataFrame(inputData, columns=columns).copy()

del inputData

# create sales dataframe using the SalesDate as 'ds' and Sales as 'y' which is needed as input to the Prophet model
sales = df.rename(columns = {'SalesDate': 'ds',
                                'Sales': 'y'})

sales=sales[['ds','y']]

# Get dates for school holidays

school_dates_df=df[['SalesDate','SchoolHoliday']]
school_dates_df['SchoolHoliday'] = pd.to_numeric(school_dates_df['SchoolHoliday'])
school_dates = school_dates_df.loc[school_dates_df.SchoolHoliday == 1, 'SalesDate'].values


school = pd.DataFrame({'holiday': 'school_holiday',
                      'ds': pd.to_datetime(school_dates)})


holidays = school


# # Prophet implementation 
# Train model 
my_model = Prophet(interval_width = 0.70, changepoint_prior_scale=0.05,seasonality_prior_scale=0.03,holidays_prior_scale=0.03,
                   holidays = holidays.head(1000))


# Fit model using the Sales data
with suppress_stdout_stderr():
    my_model.fit(sales)
    


# dataframe that extends into future and history
# future_dates = my_model.make_future_dataframe(periods=365)

# Get min date and then go back 1 month
dt = min(sales['ds'].values)
date1 = datetime.datetime.strptime(dt, "%y/%m/%d").date()

# Subtract one month
start_date = date1 - relativedelta(months=1)

# Get max date and then get future dates for 1 month
dt1 = max(sales['ds'].values)
date2 = datetime.datetime.strptime(dt1, "%y/%m/%d").date()

# Add one month
end_date = date2 + relativedelta(months=1)
# end_date= str(end_value)

# Create date range using start date and end date
date_range = pd.date_range(str(start_date), str(end_date))

# Create data frame for the dates to be passed to predict function
future_dates = pd.DataFrame({'ds': date_range})

# forecast
forecast_df = my_model.predict(future_dates)


# Export results to Advanced SQL Engine through standard output in expected format.
# for index, row in future_dates.iterrows():
#     print(row['ds'])
for index, row in forecast_df.iterrows():
           print(row['ds'], delimiter, row['yhat'], delimiter,row['yhat_lower'], delimiter, row['yhat_upper'], delimiter, row['trend'], delimiter, row['weekly'], delimiter, row['yearly'])
