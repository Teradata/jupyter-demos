<b style = 'font-size:28px;font-family:Arial;color:#E37C4D'>Machine Learning Demonstrations</b>
 
* [Air Passenger Forecasting](../UseCases/AirPassengersTimeSeriesForecasting/AirPassengersTimeSeriesForecasting.ipynb)
<br>This demo will show how to use the ARIMA model to predict passenger volume.  ARIMA(Auto Regressive Integrated Moving Average) is a combination of 2 models AR(Auto Regressive) and MA(Moving Average). It has 3 hyperparameters - P(auto regressive lags), d(order of differentiation), Q(moving avg.) which respectively comes from the AR, I and MA components. The AR part is correlation between prev and current time periods. To smooth out the noise, the MA part is used. The I part binds together the AR and MA parts.</br>
 
* [Energy Consumption Forecasting](../UseCases/Consumption_Forecasting_BYOM/Consumption_Forecasting_BYOM.ipynb)
<br>In this demo we demonstrate how the full lifecycle of consumption forecast can be implemented using Vantage technologies and specifically, the combination of Bring Your Own Model (BYOM), Vantage Analytics Library (VAL) and teradataml python client library solution.</br>
 
* [Money Mule Detection using BYOM with Python and Scoring in Vantage](../UseCases/GLM_Fraud_Detection_BYOM/GLM_Fraud_Detection_BYOM.ipynb)
<br>Demo uses the Vantage PMMLPredict function to score a Logistic Regression model that has been trained using an open-source python package sklearn.  Data for the demo is fake money transfer logs and is used to identify fraudulent transactions.</br>
 
* [Python Parallel Processing for Data Movement and Model Training - Downloadable Demo Overview](#) ... (coming soon)
<br>Uses various python techniques to introduce parallel and distributed processing concepts, including Teradata Fastload/fastexport.  Also shows an example of distribued processing for ml model training outside of Vantage</br>
 
* [Money Mule Detection using ML Model Training with Python and Scoring
in Vantage](../UseCases/GLM_Fraud_Detection_SQLE/GLM_Fraud_Detection_SQLE.ipynb)
<br>Demo uses the Vantage GLM Predict function to score a Logistic Regression model that has been trained using an open-source python package statsmodels. Data for the demo is fake money transfer logs and is used to identify fraudulent transaction</br>
 

Copyright © 2022 Teradata Corporation
