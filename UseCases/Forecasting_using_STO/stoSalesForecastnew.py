import sys
import numpy as np
import pandas as pd
# Prophet Library
import subprocess

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

# Know your data: You must know in advance the number and data types of the
# incoming columns from the database!
# For numeric columns, the database sends in floats in scientific format with a
# blank space when the exponential is positive; e.g., 1.0 is sent as 1.000E 000.
# The following input data read deals with any such blank spaces in numbers.

columns = ['SlsID','Store','DayOfWeek', 'SalesDate', 'Sales', 'Customers', 'SalesOpen','Promo', 'StateHoliday',
       'SchoolHoliday']

df = pd.DataFrame(inputData, columns=columns).copy()

del inputData


sales = df.rename(columns = {'SalesDate': 'ds',
                                'Sales': 'y'})
# sales['ds'] = pd.to_datetime(sales['ds']).dt.date
# .dt.date.strftime("%d/%m/%Y")

sales=sales[['ds','y']]

# Get dates for school holidays

school_dates_df=df[['SalesDate','SchoolHoliday']]
school_dates_df['SchoolHoliday'] = pd.to_numeric(school_dates_df['SchoolHoliday'])
school_dates = school_dates_df.loc[school_dates_df.SchoolHoliday == 1, 'SalesDate'].values


# state = pd.DataFrame({'holiday': 'state_holiday',
#                       'ds': pd.to_datetime(state_dates)})
school = pd.DataFrame({'holiday': 'school_holiday',
                      'ds': pd.to_datetime(school_dates)})

# school['ds'] = pd.to_datetime(school['ds']).dt.date
holidays = school
# holidays['ds'] = pd.to_datetime(holidays['ds']).dt.date
# pd.concat((state, school))      



# # Prophet implementation 
my_model = Prophet(interval_width = 0.95, 
                   holidays = holidays.head(1000))



with suppress_stdout_stderr():
    my_model.fit(sales)
    


# dataframe that extends into future and history
# future_dates = my_model.make_future_dataframe(periods=365)
# Get min date and then go back 1 month
dt = min(sales['ds'].values)
date1 = datetime.datetime.strptime(dt, "%y/%m/%d").date()



#  # Subtract one month
start_date = date1 - relativedelta(months=1)

# Get man date and then get future dates for 1 month
dt1 = max(sales['ds'].values)
date2 = datetime.datetime.strptime(dt1, "%y/%m/%d").date()
# date2 = datetime.datetime.strptime(datetime_str, "%Y/%m/%dT%H:%M:%S.%f").date()
end_date = date2 + relativedelta(months=1)
# end_date= str(end_value)


# # date_range = pd.date_range(start_date, periods=num_days)
date_range = pd.date_range(str(start_date), str(end_date))

future_dates = pd.DataFrame({'ds': date_range})

# forecast
forecast_df = my_model.predict(future_dates)


# Export results to Advanced SQL Engine through standard output in expected format.
# for index, row in future_dates.iterrows():
#     print(row['ds'])
for index, row in forecast_df.iterrows():
           print(row['ds'], delimiter, row['yhat'], delimiter,row['yhat_lower'], delimiter, row['yhat_upper'], delimiter, row['trend'], delimiter, row['weekly'], delimiter, row['yearly'])
