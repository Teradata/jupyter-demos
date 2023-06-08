<img id=Teradata-logo src="./images/CSAE_Header.png" alt="Teradata" width="100%"  /><br>
# ClearScape Analytics™ Demonstrations via Jupyter
 
Welcome to ClearScape Analytics Experience.  This service consists of [multiple demonstrations](#Table-of-Contents) of the industry leading in-database analytics that **you can run on your own**. You can modify them or use them as examples to use with your own tools against our data or small (not sensitive) data you upload. Each notebook will: 
- describe the business situation, 
- will attach the needed data from the cloud, and  
- walk you step-by-step through the use of the ClearScape Analytics functionality. 

These are <u>functional</u> demonstrations executed on a tiny platform with small data, but the same functionality is available on all of our platforms up to one with hundreds of nodes and petabytes of data. ClearScape Analytics allows you to apply AI, ML and advanced statistics to your data without the cost and complexity of exporting data. You can develop sophisticated models on other platforms with your favorite tools and import those models to execute in production at massive scale.

If you've never used Jupyter before, we strongly recommend reviewing the **First Time User** section of **Getting Started**. You'll find an [**introduction video**](./Getting_Started/Introduction_Video/Introduction_Video_SQL.ipynb) with tips on using this platform. There are also tips for you if you just want to <b>[look without programming](#I-am-not-a-programmer)</b>. If you have questions or issues, [**click here**](mailto:SC230208@teradata.com?subject=ClearScape%20Analytics%20Jupyter%20Question) to send an e-mail to ClearScape Analytics Support.<br><br> 

---

## Table of Contents
*Items in italics are coming soon.*

|Getting Started| Industries| Functionality|3rd Party Tools|
|-----------|--------------|---------------|--------------- |
|[**First Time User**](#First-Time-User)|[Automotive](#Automotive)|[Data Preparation](#Data-Preparation)|*AWS SageMaker*|
|[I am not a programmer](#I-am-not-a-programmer)|[Energy & Natural Resources](#Energy-&-Natural-Resources)|[Descriptive Statistics](#Descriptive-Statistics)|*Azure ML*|
|[Developer Information](#Developer-Information)|[Financial](#Financial)|*Feature Engineering*|[Dataiku](#Dataiku)|
| |[Healthcare](#Healthcare)|[Geospatial](#Geospatial)|*H2O.ai*|
| |[Manufacturing](#Manufacturing)|[Hypothesis testing](#Hypothesis-testing)|*Microsoft PowerBI*|
| |[Retail](#Retail)|[Machine learning](#Machine-learning)|*MicroStrategy*|
| |[Telco](#Telco)|*ModelOps*|*SAP Business Objects*|
| |[Travel & Transportation](#Travel-&-Transportation)|[Object Storage](#Object-Storage)|*SAS*|
| | |[Open-and-connected analytics](#Open-and-connected-analytics)|*Tableau*|
| | |[Path Analytics](#Path-Analytics)|*Vertex*|
| | |[Text Analysis](#Text-Analysis)| |
| | |[Time series analytics](#Time-series-analytics)| |



---

## Getting Started


### First Time User

[**Introduction Video**](./Getting_Started/Introduction_Video/Introduction_Video_SQL.ipynb)<br>
Video description how to find demos in the index and folder view, tips on running demos and options for foreign vs local tables used in the demonstrations in your ClearScape Analytics environment.

[Basic Jupyter Navigation](./Getting_Started/Basic_Jupyter_Navigation/Basic_Jupyter_Navigation_SQL.ipynb)<br>
When running a Jupyter Notebook, there are various indicators that show what is happening. This is a guide to those indicators.

[Back to Table of Contents](#Table-of-Contents)<br>

### I am not a programmer

[I am not a programmer](./Getting_Started/I_am_not_a_programmer/I_am_not_a_programmer.ipynb)<br>
Not everyone that uses this site will want to learn programming. Some will want to review the business cases, look at the steps for the analysis and look at the tables, charts and maps. This is a guide for those people.

[Back to Table of Contents](#Table-of-Contents)<br>

### Developer Information

[Data Loading (Python)](./Getting_Started/Data_Loading/Data_Loading_Python.ipynb)<br>
Shows how to use python to load CSV data from local storage and from zipped files

[Data Loading (SQL)](./Getting_Started/Data_Loading/Data_Loading_SQL.ipynb)<br>
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.

[SQL Basics in Jupyter](./Getting_Started/SQL_Basics_in_Jupyter/SQL_Basics_in_Jupyter_SQL.ipynb)<br>
This guide will walk you through writing your first SQL queries in Jupyter.  It uses some of the Vantage system tables as a source for the queries.

[teradataml Python Basics](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)<br>
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.

[Intro to Panda for Python](./Getting_Started/Intro_to_Pandas_For_Python/Intro_to_Pandas_For_Python.ipynb)<br>
Provides step-by-step instructions on the basics of using Python Pandas with Jupyter notebooks.

[Charting and Visualization](./Getting_Started/Charting_and_Visualization/Charting_and_Visualization_SQL.ipynb)<br>
Data from queries is brought to life with graphics and charts. This shows how to use the %chart magic command to display results.

[VAL Overview](./UseCases/Vantage_Analytics_Library/VAL_Overview_SQL.ipynb)<br>
Vantage Analytics Library (VAL) is a set of over 50 functions for advanced analytics. This provides an overview and links to an 8 minute video overview.

[Data Dictionary](./UseCases/Data_Dictionary/Data_Dictionary.ipynb)<br>
This provides an index to all of the databases used by demo notebooks on this machine, allowing you to use that data for your own notebooks or BI tools.

[How to Submit Your Demos](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos.ipynb)<br>
It is very easy to submit your demo for publication. Tell us directory with the notebook and referenced files and grant us access to your database.  We'll take it from there.

[Back to Table of Contents](#Table-of-Contents)<br>

---

## Industries


### Automotive

[Battery Defect Analysis](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)<br>
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.

[Back to Table of Contents](#Table-of-Contents)<br>

### Energy & Natural Resources

[Energy Consumption Forecasting](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)<br>
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.

[Energy Consumption Forecasting Dataiku](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)<br>
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.

[Back to Table of Contents](#Table-of-Contents)<br>

### Financial

[Banking Customer Churn](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)<br>
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.

[Consumer Complaints](./UseCases/Consumer_Complaints/Consumer_Complaints_SQL.ipynb)<br>
Uses government consumer complaint data with SQL queries and visualizations to identify source of top complaints.

[Credit Card Data Preparation](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)<br>
This shows the use of ClearScape analytics to reduce the pre-processing effort of incoming raw credit card data to prepare for analysis of potential loan defaulters.

[Financial Customer Journey (PY_SQL)](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb)<br>
From customer acquisition to adoption : various in-database analytics such as attribution and nPath analysis

[Financial Customer Journey (SQL)](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb)<br>
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness

[Financial Fraud Detection InDB (PY_SQL)](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_PY_SQL.ipynb)<br>
Detect financial transaction fraud  using powerful in-database machine learning functions

[Financial Fraud Detection InDB (Python)](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb)<br>
Detect financial transaction fraud  using powerful in-database machine learning functions

[Financial Fraud Detection VIA BYOM (PY_SQL)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[Financial Fraud Detection VIA BYOM (Python)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[Insurance Policy Temporal](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)<br>
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.

[Back to Table of Contents](#Table-of-Contents)<br>

### Healthcare

[Diabetes Prediction via BYOM H2O](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_BYOM_H2O_PY_SQL.ipynb)<br>
This uses BYOM to import a trained H2O model to identify potential diabetes patients. BYOM allows the data scientist to create models in languages they prefer and run at scale inside Vantage without moving data.

[Diabetes Prediction via DF and GLM (PY_SQL)](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_PY_SQL.ipynb)<br>
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.

[Diabetes Prediction via DF and GLM (Python)](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_Python.ipynb)<br>
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.

[Heart Failure Prediction](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_PY_SQL.ipynb)<br>
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.

[Knee Replacement Attribution](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)<br>
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.

[Knee Replacement nPath](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)<br>
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.

[Back to Table of Contents](#Table-of-Contents)<br>

### Manufacturing

[Anomaly Detection](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb)<br>
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.

[Battery Defect Analysis](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)<br>
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.

[Car Complaints](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)<br>
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.

[Green Manufacturing](./UseCases/Green_Manufacturing/Green_Manufacturing_PY_SQL.ipynb)<br>
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.

[Predictive Maintenance](./UseCases/Predictive_Maintenance/Predictive_Maintenance_PY_SQL.ipynb)<br>
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.

[Remaining Useful Life Forecasting](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)<br>
Applies machine learning to predict Remaining Useful Life (RUL), allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.

[Back to Table of Contents](#Table-of-Contents)<br>

### Retail

[Broken Digital Journey](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb)<br>
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.

[Customer Behavior Analysis (PY_SQL)](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_PY_SQL.ipynb)<br>
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.

[Customer Behavior Analysis (Python)](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb)<br>
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.

[Deep History via Object Store](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)<br>
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.

[K-Means Clustering and ML model](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_SQL.ipynb)<br>
This uses the unsupervised K-Means ML algorithm to identify patterns in retail purchases.

[Retail Demand Forecasting](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)<br>
This creates an ARIMA time series model based on holidays and merchandising activities impacting store sales for a hypermarket retailer.

[Text Term Frequency (Python)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb)<br>
Use Ngram splitter within Python to analyze comments  retail products to determine patterns of words used to describe products

[Text Term Frequency (Python-Sql)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb)<br>
Use Ngram splitter within Python to analyze comments  retail products to determine patterns of words used to describe products

[Text Term Frequency (SQL)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)<br>
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.

[Back to Table of Contents](#Table-of-Contents)<br>

### Telco

[Telco Customer Churn](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_PY_SQL.ipynb)<br>
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.

[Telco Network Coverage](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_PY_SQL.ipynb)<br>
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.

[Back to Table of Contents](#Table-of-Contents)<br>

### Travel & Transportation

[4D Analytics on bike sharing (PY_SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017. This version has interactive geospatial maps.

[4D Analytics on bike sharing (SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.

[Air Passenger Forecasting](./UseCases/Air_Passenger_Forecasting/Air_Passenger_Forecasting_SQL.ipynb)<br>
Applies Auto Regressive Integrated Moving Average (ARIMA) analysis to forecast airplane passenger volume.

[NYC Taxi Geospatial](./UseCases/NYC_Taxi/NYC_Taxi_Geospatial_PY_SQL.ipynb)<br>
Applies geospatial functions to analysis of NYC Taxi pickups and drop off locations.

[Remaining Useful Life Forecasting](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)<br>
Applies machine learning to predict Remaining Useful Life (RUL), allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.

[Train Delay Path Analysis](./UseCases/Train_Delay/Train_Delay_Python.ipynb)<br>
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.

[Back to Table of Contents](#Table-of-Contents)<br>

---

## Functionality


### Data Preparation

[Credit Card Data Preparation](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)<br>
This shows the use of ClearScape analytics to reduce the pre-processing effort of incoming raw credit card data to prepare for analysis of potential loan defaulters.

[Data Prep and Transformation (PY_SQL)](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_PY_SQL.ipynb)<br>
This demonstrates a subset of the over 100 analytic functions in the teradataml package for Python

[Data Prep and Transformation (Python)](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_Python.ipynb)<br>
This demonstrates a subset of the over 100 analytic functions in the teradataml package for Python

[Outlier Analysis](./UseCases/Outlier_Analysis/Outlier_Analysis_SQL.ipynb)<br>
Outliers in an analysis skew the results and make it difficult to recognize the main patterns. ClearScape Analytics has tools to remove outliers automatically.

[Back to Table of Contents](#Table-of-Contents)<br>

### Descriptive Statistics

[VAL Descriptive Statistics](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)<br>
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.

[VAL teradataml Demo](./UseCases/Vantage_Analytics_Library/VAL_teradataml_Demo_Python.ipynb)<br>
Demonstrated the use of Teradataml in Python to perform descriptive statistics, transformation, model building model evaluation and scoring.

[Back to Table of Contents](#Table-of-Contents)<br>

### Geospatial

[4D Analytics on bike sharing (PY_SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017. This version has interactive geospatial maps.

[4D Analytics on bike sharing (SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.

[Car Complaints](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)<br>
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.

[NYC Taxi Geospatial](./UseCases/NYC_Taxi/NYC_Taxi_Geospatial_PY_SQL.ipynb)<br>
Applies geospatial functions to analysis of NYC Taxi pickups and drop off locations.

[Sensor Data Analytics](./UseCases/Sensor_Data_Analytics/Sensor_Data_Analytics_PY_SQL.ipynb)<br>
Creative application of geospatial to locations of sensors in  a research lab and integration of data from tables with detailed recordings on cloud storage.

[Telco Network Coverage](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_PY_SQL.ipynb)<br>
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.

[Back to Table of Contents](#Table-of-Contents)<br>

### Hypothesis testing

[VAL Hypothesis Tests](./UseCases/Vantage_Analytics_Library/VAL_Hypothesis_Tests_SQL.ipynb)<br>
This demonstrates a subset of the 18 hypothesis test in the Vantage Analytics library  using SQL such as Parametric, Binomial, Kolmogorov/Smirnoff, Rank, etc.

[Back to Table of Contents](#Table-of-Contents)<br>

### Machine learning

[Anomaly Detection](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb)<br>
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.

[Banking Customer Churn](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)<br>
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.

[Diabetes Prediction via DF and GLM (PY_SQL)](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_PY_SQL.ipynb)<br>
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.

[Diabetes Prediction via DF and GLM (Python)](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_Python.ipynb)<br>
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.

[Financial Fraud Detection InDB (PY_SQL)](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_PY_SQL.ipynb)<br>
Detect financial transaction fraud  using powerful in-database machine learning functions

[Financial Fraud Detection InDB (Python)](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb)<br>
Detect financial transaction fraud  using powerful in-database machine learning functions

[Financial Fraud Detection VIA BYOM (PY_SQL)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[Financial Fraud Detection VIA BYOM (Python)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[Green Manufacturing](./UseCases/Green_Manufacturing/Green_Manufacturing_PY_SQL.ipynb)<br>
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.

[Heart Failure Prediction](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_PY_SQL.ipynb)<br>
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.

[K-Means Clustering and ML model](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_SQL.ipynb)<br>
This uses the unsupervised K-Means ML algorithm to identify patterns in retail purchases.

[Predictive Maintenance](./UseCases/Predictive_Maintenance/Predictive_Maintenance_PY_SQL.ipynb)<br>
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.

[Remaining Useful Life Forecasting](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)<br>
Applies machine learning to predict Remaining Useful Life (RUL), allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.

[Telco Customer Churn](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_PY_SQL.ipynb)<br>
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.

[Train Delay Path Analysis](./UseCases/Train_Delay/Train_Delay_Python.ipynb)<br>
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.

[VAL Analytics and ML](./UseCases/Vantage_Analytics_Library/VAL_Analytics_and_ML_SQL.ipynb)<br>
Demonstration of Vantage Analytic Library scoring and analytic functions like linear regression, decision trees, K-Means clustering, Factor Analysis, etc.

[Vertex AI Integration](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)<br>
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertix AI is the environment for data scientists to deploy ML models.

[Back to Table of Contents](#Table-of-Contents)<br>

### Object Storage

[Battery Defect Analysis](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)<br>
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.

[Deep History via Object Store](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)<br>
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.

[Back to Table of Contents](#Table-of-Contents)<br>

### Open-and-connected analytics

[Anomaly Detection](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb)<br>
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.

[Banking Customer Churn](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)<br>
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.

[Dataiku](./UseCases/Dataiku/Dataiku.ipynb)<br>
Discusses how the 3rd party tool DataIku can be used with Vantage.

[Diabetes Prediction via BYOM H2O](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_BYOM_H2O_PY_SQL.ipynb)<br>
This uses BYOM to import a trained H2O model to identify potential diabetes patients. BYOM allows the data scientist to create models in languages they prefer and run at scale inside Vantage without moving data.

[Energy Consumption Forecasting](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)<br>
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.

[Energy Consumption Forecasting Dataiku](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)<br>
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.

[Financial Fraud Detection VIA BYOM (PY_SQL)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[Financial Fraud Detection VIA BYOM (Python)](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)<br>
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.

[teradataml Python Basics](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)<br>
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.

[Vertex AI Integration](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)<br>
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertix AI is the environment for data scientists to deploy ML models.

[Back to Table of Contents](#Table-of-Contents)<br>

### Path Analytics

[Broken Digital Journey](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb)<br>
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.

[Customer Behavior Analysis (PY_SQL)](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_PY_SQL.ipynb)<br>
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.

[Customer Behavior Analysis (Python)](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb)<br>
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.

[Financial Customer Journey (PY_SQL)](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb)<br>
From customer acquisition to adoption : various in-database analytics such as attribution and nPath analysis

[Financial Customer Journey (SQL)](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb)<br>
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness

[Knee Replacement Attribution](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)<br>
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.

[Knee Replacement nPath](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)<br>
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.

[MultiTouch Attribution](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)<br>
Shows rule-based, Statistics, and Algorithmic attribution of the marketing touchpoints leading to conversion. Ten approaches will be demonstrated along with path analysis of effectiveness and cost of conversion.

[Train Delay Path Analysis](./UseCases/Train_Delay/Train_Delay_Python.ipynb)<br>
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.

[Back to Table of Contents](#Table-of-Contents)<br>

### Text Analysis

[Text Term Frequency (Python)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb)<br>
Use Ngram splitter within Python to analyze comments  retail products to determine patterns of words used to describe products

[Text Term Frequency (Python-Sql)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb)<br>
Use Ngram splitter within Python to analyze comments  retail products to determine patterns of words used to describe products

[Text Term Frequency (SQL)](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)<br>
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.

[VAL Descriptive Statistics](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)<br>
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.

[Back to Table of Contents](#Table-of-Contents)<br>

### Time series analytics

[4D Analytics on bike sharing (PY_SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017. This version has interactive geospatial maps.

[4D Analytics on bike sharing (SQL)](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)<br>
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.

[Air Passenger Forecasting](./UseCases/Air_Passenger_Forecasting/Air_Passenger_Forecasting_SQL.ipynb)<br>
Applies Auto Regressive Integrated Moving Average (ARIMA) analysis to forecast airplane passenger volume.

[Carbon Footprint Analytics](./UseCases/Carbon_Footprint_Analytics/Carbon_Footprint_Analytics_PY_SQL.ipynb)<br>
A key component of ESG is Carbon Footprint. This demonstrates a part of a solution available from Teradata to integrate multiple data sources to calculate carbon footprint of various corporate activities.

[Consumer Complaints](./UseCases/Consumer_Complaints/Consumer_Complaints_SQL.ipynb)<br>
Uses government consumer complaint data with SQL queries and visualizations to identify source of top complaints.

[Energy Consumption Forecasting](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)<br>
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.

[Fourier Transforms](./UseCases/Fourier_Transforms/Fourier_Transforms_SQL.ipynb)<br>
Fourier transformations are demonstrated to filter out noise from signals to allow identification of underlying patterns.

[Insurance Policy Temporal](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)<br>
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.

[NYC Taxi Temporal](./UseCases/NYC_Taxi/NYC_Taxi_Temporal_SQL.ipynb)<br>
Time series data can answer the questions about what was happening at a point in time. This applies Time series and temporal capabilities  of vantage to NYC taxi data.

[Retail Demand Forecasting](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)<br>
This creates an ARIMA time series model based on holidays and merchandising activities impacting store sales for a hypermarket retailer.

[Vantage Query Log Analysis](./UseCases/Vantage_Query_Log_Analysis/Vantage_Query_Log_Analysis_SQL.ipynb)<br>
Analysis of sessions and queries  you executed using the built-in logging facilities of Vantage.

[Back to Table of Contents](#Table-of-Contents)<br>

---

## 3rd Party Tools


### Dataiku

[Dataiku](./UseCases/Dataiku/Dataiku.ipynb)<br>
Discusses how the 3rd party tool DataIku can be used with Vantage.

[Energy Consumption Forecasting Dataiku](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)<br>
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.

---

<footer style="padding:10px;background:#f9f9f9;border-bottom:3px solid #394851">©2023 Teradata. All Rights Reserved</footer>

