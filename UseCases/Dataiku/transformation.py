import dataiku
from teradataml import *
import pandas as pd, numpy as np
from dataiku import pandasutils as pdu
configure.val_install_location = 'val'

eng = create_context(host = 'may-03-1ls9ezeez0ycgiqb.env.clearscape.teradata.com', username='demo_user', password = 'teradata')
df = DataFrame(in_schema("DEMO_Energy", "consumption"))


weekday_mapping = {1:'monday', 2:'tuesday', 3:'wednesday', 4:'thursday', 5:'friday', 6:'saturday', 7:'sunday'}
weekday_t = OneHotEncoder(values = weekday_mapping, columns = 'weekday')

hour_t = OneHotEncoder(values = [x for x in range(0,24)],  columns = 'h')

rs = MinMaxScalar(columns = ['nasa_temp','cap_air_temperature', 'cap_cloud_area_fraction', 'cap_precipitation_amount'])

rt = Retain(columns = ['consumption',
                       'is_dark', 'is_light', 'is_from_light_to_dark', 'is_from_dark_to_light', 
                       'is_holiday', 'is_pre_holiday'])

trans_output = valib.Transform(data = df,
                           one_hot_encode = [weekday_t, hour_t], 
                           rescale = [rs],
                           index_columns = 'TD_TIMECODE',
                           retain = [rt]).result.to_pandas(all_rows=True).reset_index()


# Write recipe outputs
transformed_df = dataiku.Dataset("transformed_df")
transformed_df.write_with_schema(trans_output)