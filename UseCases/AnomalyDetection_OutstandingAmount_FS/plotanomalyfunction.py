import warnings
warnings.filterwarnings('ignore')
warnings.simplefilter(action='ignore', category=DeprecationWarning)
warnings.simplefilter(action='ignore', category=RuntimeWarning)
warnings.simplefilter(action='ignore', category=FutureWarning)

import json
import pandas as pd
import datetime
import plotly.graph_objs as go
import seaborn as sns
import numpy as np

def plot_account_data(df, acc_id):
    res = df[df.Account_ID == acc_id].sort('Balance_Date').to_pandas()
    res['ANOMALY_FLAG'][res.ANOMALY_FLAG.isna()] = 2
    res['Balance_Date'] = pd.to_datetime(res['Balance_Date'])
    
    anomaly_description = {2.0: 'Not Considered', 0.0: 'Normal', 1.0: 'Abnormal'}

    res['ANOMALY_LABEL'] = res['ANOMALY_FLAG'].map(anomaly_description)

    # Convert ANOMALY_FLAG to categorical and then to integer codes
    category_codes, unique_categories = pd.factorize(res['ANOMALY_LABEL'])

    colors = {'Not Considered': 'grey', 'Normal': 'green', 'Abnormal': 'red'}
    color_map = [colors[category] for category in unique_categories]


    data = []
    for category, color in zip(unique_categories, color_map):
        filtered_res = res[res['ANOMALY_LABEL'] == category]
        trace = go.Scatter(
            x=filtered_res['Balance_Date'],
            y=filtered_res['Monthly_Balance'],
            mode='markers',
            marker=dict(color=color, size=10),
            name=f'{category}'
        )
        data.append(trace)



    trace_line = go.Scatter(
        x=res['Balance_Date'],
        y=res['Monthly_Balance'],
        mode='lines',
        line=dict(color='blue'),
        name='Monthly Balance'
    )
    data.append(trace_line)

    # Mean Monthly Balance line
    trace_mean = go.Scatter(
        x=res['Balance_Date'],
        y=res['MEAN_MONTHLY_BALANCE'],
        mode='lines',
        line=dict(color='black'),
        name='Mean Monthly Balance'
    )
    data.append(trace_mean)

    # Mean - 3*STD line
    trace_std_lower = go.Scatter(
        x=res['Balance_Date'],
        y=res['MEAN_MONTHLY_BALANCE'] - 3 * res['STD_MONTHLY_BALANCE'],
        mode='lines',
        line=dict(color='black', dash='dash'),
        name='Mean - 3*STD'
    )
    data.append(trace_std_lower)

    # Mean + 3*STD line
    trace_std_upper = go.Scatter(
        x=res['Balance_Date'],
        y=res['MEAN_MONTHLY_BALANCE'] + 3 * res['STD_MONTHLY_BALANCE'],
        mode='lines',
        line=dict(color='black', dash='dash'),
        name='Mean + 3*STD'
    )
    data.append(trace_std_upper)

    layout = go.Layout(
        title=f'Account: {acc_id} \n Monthly Balance with Anomalies, Mean, and Standard Deviation Boundaries',
        xaxis=dict(title='Balance Date'),
        yaxis=dict(title='Monthly Balance'),
        hovermode='closest',
        height = 800,
        width  = 1000
    )

    # Creating figure
    fig = go.Figure(data=data, layout=layout)

    # Plotting
    fig.show()
