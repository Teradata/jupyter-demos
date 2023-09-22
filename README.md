<img id=Teradata-logo src="./images/CSAE_Header.png" alt="Teradata" width="100%"  /><br>
# ClearScape Analytics™ Demonstrations via Jupyter
 
Welcome to ClearScape Analytics Experience.  This service consists of [multiple demonstrations](#Table-of-Contents) of the industry leading in-database analytics that **you can run on your own**. You can modify them or use them as examples to use with your own tools against our data or small (not sensitive) data you upload. Each notebook will: 
- describe the business situation, 
- will attach the needed data from the cloud, and  
- walk you step-by-step through the use of the ClearScape Analytics functionality. 

These are <u>functional</u> demonstrations executed on a tiny platform with small data, but the same functionality is available on all of our platforms up to one with hundreds of nodes and petabytes of data. ClearScape Analytics allows you to apply AI, ML and advanced statistics to your data without the cost and complexity of exporting data. You can develop sophisticated models on other platforms with your favorite tools and import those models to execute in production at massive scale.

If you've never used Jupyter before, we strongly recommend reviewing the **First Time User** section of **Getting Started**. You'll find an [**introduction video**](./Getting_Started/Introduction_Video/Introduction_Video_SQL.ipynb) with tips on using this platform. There are also tips for you if you just want to <b>[look without programming](#I-am-not-a-programmer)</b>. If you have questions or issues, [**click here**](mailto:SC230208@teradata.com?subject=ClearScape%20Analytics%20Jupyter%20Question) to send an e-mail to ClearScape Analytics Support.<br><br> 

---

<a id='toc'></a>
## Table of Contents
*Items in italics are coming soon.*

| Getting Started | Industries | Business Function | Analytic Function| 3rd Party Tools|
|-----------|--------------|---------------|--------------- | --------------- |
|<a href='#xFirst-Time-User'>**First Time User**</a>|<a href='#xAutomotive'>Automotive</a>|*Finance*|<a href='#xData-Preparation'>Data Preparation</a>|*AWS SageMaker*|
|<a href='#xI-am-**not**-a-programmer'>I am **not** a programmer</a>|<a href='#xEnergy-&-Natural-Resources'>Energy & Natural Resources</a>|<a href='#xMarketing'>Marketing</a>|<a href='#xDescriptive-Statistics'>Descriptive Statistics</a>|<a href='#xAzure-ML'>Azure ML</a>|
|<a href='#xDeveloper-Information'>Developer Information</a>|<a href='#xFinancial'>Financial</a>| |*Feature Engineering*|<a href='#xCelebrus'>Celebrus</a>|
| |<a href='#xHealthcare'>Healthcare</a>| |<a href='#xGenerative-AI'>Generative AI</a>|<a href='#xDataiku'>Dataiku</a>|
| |<a href='#xManufacturing'>Manufacturing</a>| |<a href='#xGeospatial'>Geospatial</a>|*H2O.ai*|
| |<a href='#xRetail'>Retail</a>| |<a href='#xHypothesis-testing'>Hypothesis testing</a>|*Microsoft PowerBI*|
| |<a href='#xTelco'>Telco</a>| |<a href='#xMachine-learning'>Machine learning</a>|*MicroStrategy*|
| |<a href='#xTravel-&-Transportation'>Travel & Transportation</a>| |<a href='#xModelOps'>ModelOps</a>|<a href='#xR'>R</a>|
| | | |<a href='#xObject-Storage'>Object Storage</a>|*SAP Business Objects*|
| | | |<a href='#xOpen-and-connected-analytics'>Open-and-connected analytics</a>|*SAS*|
| | | |<a href='#xPath-Analytics'>Path Analytics</a>|*Tableau*|
| | | |<a href='#xText-Analysis'>Text Analysis</a>|*Vertex*|
| | | |<a href='#xTime-series-analytics'>Time series analytics</a>| |


<br>

---

## Getting Started

<a id='xFirst-Time-User'></a>
### First Time User

#### Introduction Video
Video description how to find demos in the index and folder view, tips on running demos and options for foreign vs local tables used in the demonstrations in your ClearScape Analytics environment.<br>
[Information](./Getting_Started/Introduction_Video/Introduction_Video_SQL.ipynb)

#### Basic Jupyter Navigation
When running a Jupyter Notebook, there are various indicators that show what is happening. This is a guide to those indicators.<br>
[SQL Version](./Getting_Started/Basic_Jupyter_Navigation/Basic_Jupyter_Navigation_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xI-am-**not**-a-programmer'></a>
### I am **not** a programmer

#### I am **not** a programmer
Not everyone that uses this site will want to learn programming. Some will want to review the business cases, look at the steps for the analysis and look at the tables, charts and maps. This is a guide for those people.<br>
[Information](./Getting_Started/I_am_not_a_programmer/I_am_not_a_programmer.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDeveloper-Information'></a>
### Developer Information

#### Data Loading (Python)
Shows how to use python to load CSV data from local storage and from zipped files<br>
[Python Version](./Getting_Started/Data_Loading/Data_Loading_Python.ipynb)

#### Data Loading (SQL)
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[SQL Version](./Getting_Started/Data_Loading/Data_Loading_SQL.ipynb)

#### Query Service REST API
Demonstration of using REST API calls to Vantage which is useful for web or mobile applications to access and maintain data.<br>
[Python Version](./UseCases/Query_Service/Query_Service.ipynb)

#### SQL Basics in Jupyter
This guide will walk you through writing your first SQL queries in Jupyter.  It uses some of the Vantage system tables as a source for the queries.<br>
[SQL Version](./Getting_Started/SQL_Basics_in_Jupyter/SQL_Basics_in_Jupyter_SQL.ipynb)

#### teradataml Python Basics
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.<br>
[Python Version](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)

#### Intro to Panda for Python
Provides step-by-step instructions on the basics of using Python Pandas with Jupyter notebooks.<br>
[Python Version](./Getting_Started/Intro_to_Pandas_For_Python/Intro_to_Pandas_For_Python.ipynb)

#### Charting and Visualization
Data from queries is brought to life with graphics and charts. This shows how to use the %chart magic command to display results.<br>
[SQL Version](./Getting_Started/Charting_and_Visualization/Charting_and_Visualization_SQL.ipynb)

#### VAL Overview
Vantage Analytics Library (VAL) is a set of over 50 functions for advanced analytics. This provides an overview and links to an 8 minute video overview.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Overview_SQL.ipynb)

#### Data Dictionary
This provides an index to all of the databases used by demo notebooks on this machine, allowing you to use that data for your own notebooks or BI tools.<br>
[Python Version](./UseCases/Data_Dictionary/Data_Dictionary.ipynb)

#### How to Submit Your Demos
It is very easy to submit your demo for publication. Tell us directory with the notebook and referenced files and grant us access to your database.  We'll take it from there.<br>
[Python Version](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos.ipynb) &ensp; [Video](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos_Video.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Industries

<a id='xAutomotive'></a>
### Automotive

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python-SQL Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)

#### Car Complaints
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.<br>
[Python-SQL Version](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xEnergy-&-Natural-Resources'></a>
### Energy & Natural Resources

#### Carbon Footprint Analytics
A key component of ESG is Carbon Footprint. This demonstrates a part of a solution available from Teradata to integrate multiple data sources to calculate carbon footprint of various corporate activities.<br>
[Python-SQL Version](./UseCases/Carbon_Footprint_Analytics/Carbon_Footprint_Analytics_PY_SQL.ipynb)

#### Energy Consumption Forecasting
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)

#### Energy Consumption Forecasting Dataiku
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)

#### Energy Consumption Forecasting using AzureML
This leverages the power of AzureML and Teradata Vantage to enhance our machine learning capabilities and enable scalable model scoring to forecast energy consumption.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_AzureML/Energy_Consumption_Forecasting_AzureML.ipynb)

#### Flood Proximity to Climate Risk Analysis
This allows enterprises to rapidly analyze this geographic-related information in real-time at any scale - effectively understanding the impacts of these climate events on entire populations.<br>
[Python Version](./UseCases/Flood_Proximity_Analysis/Flood_Proximity_Analysis_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xFinancial'></a>
### Financial

#### Banking Customer Churn
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.<br>
[Python Version](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)

#### Cash Demand Forecasing
Predicts the future demand for cast in Automatic Teller Machines (ATMs) using Auto Regressive Integrated Moving Average  (ARIMA) using In-Database functions.<br>
[SQL Version](./UseCases/Cash_Demand_Forecasting/Cash_Demand_Forecasting_SQL.ipynb)

#### Consumer Complaints
Uses government consumer complaint data with SQL queries and visualizations to identify source of top complaints.<br>
[SQL Version](./UseCases/Consumer_Complaints/Consumer_Complaints_SQL.ipynb)

#### Credit Card Data Preparation
This shows the use of ClearScape analytics to reduce the pre-processing effort of incoming raw credit card data to prepare for analysis of potential loan defaulters.<br>
[SQL Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)

#### Digital Identity Management
Combines ClearScape Analytics with Celebrus to track unique customers across web sessions and devices to drive personalized experiences<br>
[SQL Version](./UseCases/Digital_Identity_Management/Digital_Identity_Management_SQL.ipynb)

#### Financial Customer Journey
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness<br>
[SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Financial%20Customer%20Journey%20Use%20Case%20Demo%20-%20External%20-%20SP004464.MP4) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

#### Financial Fraud Detection InDB
Detect financial transaction fraud  using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Fraud_Detection_Use_Case_Demo_SP004465.MP4) &ensp; [Python-SQL Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Financial%20Fraud%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004465.MP4)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)

#### Flood Proximity to Climate Risk Analysis
This allows enterprises to rapidly analyze this geographic-related information in real-time at any scale - effectively understanding the impacts of these climate events on entire populations.<br>
[Python Version](./UseCases/Flood_Proximity_Analysis/Flood_Proximity_Analysis_Python.ipynb)

#### Insurance Policy Temporal
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.<br>
[SQL Version](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xHealthcare'></a>
### Healthcare

#### 02 Explore Diabetes Data
This is a guide through the PIMA Diabetes prediction including data exploration and model experimentation.<br>
[Python Version](./ModelOps/02_ModelOps_PIMA_Experimentation.ipynb)

#### 03 ModelOps Operationalize PMML
Covers the ModelOps operationalizing of Bring-your-own-model (BOYM) importing a model via PMML.  PMML allows exchange predictive models produced by data mining and machine learning algorithms.<br>
[Python Version](./ModelOps/03_ModelOps_BYOM_PIMA_PMML.ipynb)

#### 04 Modelops Operationalize ONNX
Covers the ModelOps operationalizing of the ONNX model format for BYOM for the Diabetes use case. ONNX is an efficient model format primarily related to neural networks.<br>
[Python Version](./ModelOps/04_ModelOps_BYOM_PIMA_ONNX.ipynb)

#### 05 ModelOps Operationalize H2O
Covers the ModelOps operationalizing of the H2O model format for BYOM for the Diabetes use case. H2O is an open source, distributed in-memory machine learning library with linear scalability.<br>
[Python Version](./ModelOps/05_ModelOps_BYOM_PIMA_H2O.ipynb)

#### Data Science 101 with Python
This walks through the Cross-Industry Standard Process for Data Mining (CRISP-DM) from data understanding through modeling and evaluation.<br>
[Python Version](./UseCases/Data_Science_101_with_Python/Data_Science_101_with_Python_Python.ipynb)

#### Diabetes Prediction via BYOM H2O
This uses BYOM to import a trained H2O model to identify potential diabetes patients. BYOM allows the data scientist to create models in languages they prefer and run at scale inside Vantage without moving data.<br>
[Python-SQL Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_BYOM_H2O_PY_SQL.ipynb)

#### Diabetes Prediction via DF and GLM
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.<br>
[Python Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_Python.ipynb)

#### Heart Failure Prediction
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.<br>
[Python-SQL Version](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_PY_SQL.ipynb)

#### Knee Replacement Attribution
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.<br>
[SQL Version](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)

#### Knee Replacement nPath
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.<br>
[Python Version](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xManufacturing'></a>
### Manufacturing

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python-SQL Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)

#### Car Complaints
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.<br>
[Python-SQL Version](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)

#### Green Manufacturing
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.<br>
[Python-SQL Version](./UseCases/Green_Manufacturing/Green_Manufacturing_PY_SQL.ipynb)

#### Predictive Maintenance
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.<br>
[Python-SQL Version](./UseCases/Predictive_Maintenance/Predictive_Maintenance_PY_SQL.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xRetail'></a>
### Retail

#### Broken Digital Journey
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.<br>
[Python Version](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Broken%20Digital%20Journeys%20CX%20Solution%20Accelerator%20Demo%20via%20Python%20Video%20-%20External%20-%20SP004183%20(1).MP4)

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_PY_SQL.ipynb)

#### Deep History via Object Store
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.<br>
[SQL Version](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)

#### Hyper-Personalization
Hyper-personalization creates models from customer iteractions on multiple channels to determine the "Next Best Offer" for the individual.<br>
[Python-SQL Version](./UseCases/Hyper_Personalization/Hyper_Personalization_PY_SQL.ipynb)

#### K-Means Clustering and ML model
This uses the unsupervised K-Means ML algorithm to identify patterns in retail purchases.<br>
[SQL Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_SQL.ipynb)

#### Marketing Campaign Effectiveness
Examines the results of campaigns by various customer attributes then uses correlation, outlier elimination, and machine learning to identify the best campaigns.<br>
[Python-SQL Version](./UseCases/Marketing_Campaign_Effectiveness/Marketing_Campaign_Effectiveness_Preditction_PY_SQL.ipynb)

#### Multi-Touch Attribution for Business Analyst
This is a somewhat simplified version of the Multi-Touch Attribution demonstration focused on the interests of the Business Analyst vs the Data Scientist.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via  single touch and multi-touch rule-based models, and using statistical, and algorithmic models. Multiple approaches are demonstrated since each has strengths and limitations.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Product Recommendations via Open Source
Uses FlagEmbedding from HuggingFace plus Vantage in-database functions to assess the vector distance between the product entered and similar products.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenSource_Python.ipynb)

#### Product Recommendations via OpenAI
Uses OpenAIEmbeddings and Vantage in-database function to assists consumers in receiving product recommendations<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_Python.ipynb)

#### Retail Demand Forecasting
This creates an ARIMA time series model based on holidays and merchandising activities impacting store sales for a hypermarket retailer.<br>
[Python Version](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)

#### Retail Item Demand Forecast
Predicts demand for retail products showing how multiple models can be run concurrently.<br>
[Python-SQL Version](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

#### Store Sales Forecast via Prophet
Uses the Script Table Operator (STO) to run the H20 machine learning library as an extension to ClearScape Analytics.  H20 runs in parallel inside the Vantage database without exporting data to another platform.<br>
[Python-SQL Version](./UseCases/Store_Sales_Forecasting_Prophet_STO/Store_Sales_Forecasting_Prophet_STO_PY_SQL.ipynb)

#### Text Term Frequency
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.<br>
[SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb) &ensp; [Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTelco'></a>
### Telco

#### Graph Analysis of CDR Records
Uses graph analysis to identify communities and key influencers within Call Data Records.  This uses Script Table Operator to invoke external procedures to work inside the Vantage database without exporting data.<br>
[Python-SQL Version](./UseCases/Graph_Analysis/Graph_Analysis_PY_SQL.ipynb)

#### Telco Customer Churn
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.<br>
[Python-SQL Version](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_PY_SQL.ipynb) &ensp; [Video](.//https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Telco%20Customer%20Churn%20Use%20Case%20Demo%20-%20External%20-%20SP004520.MP4)

#### Telco Network Coverage
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.<br>
[Python-SQL Version](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTravel-&-Transportation'></a>
### Travel & Transportation

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb) &ensp; [Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)

#### Air Passenger Forecasting
Applies Auto Regressive Integrated Moving Average (ARIMA) analysis to forecast airplane passenger volume.<br>
[SQL Version](./UseCases/Air_Passenger_Forecasting/Air_Passenger_Forecasting_SQL.ipynb)

#### NYC Taxi Geospatial
Applies geospatial functions to analysis of NYC Taxi pickups and drop off locations.<br>
[Python-SQL Version](./UseCases/NYC_Taxi/NYC_Taxi_Geospatial_PY_SQL.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Business Function

<a id='xMarketing'></a>
### Marketing

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Customer 360
This integrates data about customers from multiple sources using multiple matching techniquest to create the "Golden Customer Record" and calculate LTV.<br>
[SQL Version](./UseCases/Customer360/CustomerIdentityMatching_SQL.ipynb)

#### Digital Identity Management
Combines ClearScape Analytics with Celebrus to track unique customers across web sessions and devices to drive personalized experiences<br>
[SQL Version](./UseCases/Digital_Identity_Management/Digital_Identity_Management_SQL.ipynb)

#### Generative AI Question Answering
Uses OpenAI to translate english language questions into SQL queries to run against a table of marketing data. This includes a link to a notebook with instructions for getting the required OpenAI API key.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI/Generative_Question_Answering_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Generative%20AI%20Powered%20Search-Based%20Product%20Recommendation%20Use%20Case%20Demo%20-%20External%20-%20SP004561.MP4)

#### Hyper-Personalization
Hyper-personalization creates models from customer iteractions on multiple channels to determine the "Next Best Offer" for the individual.<br>
[Python-SQL Version](./UseCases/Hyper_Personalization/Hyper_Personalization_PY_SQL.ipynb)

#### Marketing Campaign Effectiveness
Examines the results of campaigns by various customer attributes then uses correlation, outlier elimination, and machine learning to identify the best campaigns.<br>
[Python-SQL Version](./UseCases/Marketing_Campaign_Effectiveness/Marketing_Campaign_Effectiveness_Preditction_PY_SQL.ipynb)

#### Multi-Touch Attribution for Business Analyst
This is a somewhat simplified version of the Multi-Touch Attribution demonstration focused on the interests of the Business Analyst vs the Data Scientist.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via  single touch and multi-touch rule-based models, and using statistical, and algorithmic models. Multiple approaches are demonstrated since each has strengths and limitations.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Analytic Function

<a id='xData-Preparation'></a>
### Data Preparation

#### Credit Card Data Preparation
This shows the use of ClearScape analytics to reduce the pre-processing effort of incoming raw credit card data to prepare for analysis of potential loan defaulters.<br>
[SQL Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)

#### Data Prep and Transformation
This demonstrates a subset of the over 100 analytic functions in the teradataml package for Python<br>
[Python Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_PY_SQL.ipynb)

#### Outlier Analysis
Outliers in an analysis skew the results and make it difficult to recognize the main patterns. ClearScape Analytics has tools to remove outliers automatically.<br>
[SQL Version](./UseCases/Outlier_Analysis/Outlier_Analysis_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDescriptive-Statistics'></a>
### Descriptive Statistics

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb) &ensp; [Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### VAL Descriptive Statistics
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)

#### VAL teradataml Demo
Demonstrated the use of Teradataml in Python to perform descriptive statistics, transformation, model building model evaluation and scoring.<br>
[Python Version](./UseCases/Vantage_Analytics_Library/VAL_teradataml_Demo_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGenerative-AI'></a>
### Generative AI

#### Generative AI Question Answering
Uses OpenAI to translate english language questions into SQL queries to run against a table of marketing data. This includes a link to a notebook with instructions for getting the required OpenAI API key.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI/Generative_Question_Answering_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Generative%20AI%20Powered%20Search-Based%20Product%20Recommendation%20Use%20Case%20Demo%20-%20External%20-%20SP004561.MP4)

#### Product Recommendations via Open Source
Uses FlagEmbedding from HuggingFace plus Vantage in-database functions to assess the vector distance between the product entered and similar products.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenSource_Python.ipynb)

#### Product Recommendations via OpenAI
Uses OpenAIEmbeddings and Vantage in-database function to assists consumers in receiving product recommendations<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGeospatial'></a>
### Geospatial

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb) &ensp; [Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)

#### Car Complaints
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.<br>
[Python-SQL Version](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Flood Proximity to Climate Risk Analysis
This allows enterprises to rapidly analyze this geographic-related information in real-time at any scale - effectively understanding the impacts of these climate events on entire populations.<br>
[Python Version](./UseCases/Flood_Proximity_Analysis/Flood_Proximity_Analysis_Python.ipynb)

#### NYC Taxi Geospatial
Applies geospatial functions to analysis of NYC Taxi pickups and drop off locations.<br>
[Python-SQL Version](./UseCases/NYC_Taxi/NYC_Taxi_Geospatial_PY_SQL.ipynb)

#### Sensor Data Analytics
Creative application of geospatial to locations of sensors in  a research lab and integration of data from tables with detailed recordings on cloud storage.<br>
[Python-SQL Version](./UseCases/Sensor_Data_Analytics/Sensor_Data_Analytics_PY_SQL.ipynb)

#### Telco Network Coverage
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.<br>
[Python-SQL Version](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xHypothesis-testing'></a>
### Hypothesis testing

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Data Science 101 with Python
This walks through the Cross-Industry Standard Process for Data Mining (CRISP-DM) from data understanding through modeling and evaluation.<br>
[Python Version](./UseCases/Data_Science_101_with_Python/Data_Science_101_with_Python_Python.ipynb)

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### VAL Hypothesis Tests
This demonstrates a subset of the 18 hypothesis test in the Vantage Analytics library  using SQL such as Parametric, Binomial, Kolmogorov/Smirnoff, Rank, etc.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Hypothesis_Tests_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xMachine-learning'></a>
### Machine learning

#### 03 ModelOps Operationalize PMML
Covers the ModelOps operationalizing of Bring-your-own-model (BOYM) importing a model via PMML.  PMML allows exchange predictive models produced by data mining and machine learning algorithms.<br>
[Python Version](./ModelOps/03_ModelOps_BYOM_PIMA_PMML.ipynb)

#### 04 Modelops Operationalize ONNX
Covers the ModelOps operationalizing of the ONNX model format for BYOM for the Diabetes use case. ONNX is an efficient model format primarily related to neural networks.<br>
[Python Version](./ModelOps/04_ModelOps_BYOM_PIMA_ONNX.ipynb)

#### 05 ModelOps Operationalize H2O
Covers the ModelOps operationalizing of the H2O model format for BYOM for the Diabetes use case. H2O is an open source, distributed in-memory machine learning library with linear scalability.<br>
[Python Version](./ModelOps/05_ModelOps_BYOM_PIMA_H2O.ipynb)

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Banking Customer Churn
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.<br>
[Python Version](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)

#### Diabetes Prediction via DF and GLM
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.<br>
[Python Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_Python.ipynb)

#### Financial Fraud Detection InDB
Detect financial transaction fraud  using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Fraud_Detection_Use_Case_Demo_SP004465.MP4) &ensp; [Python-SQL Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Financial%20Fraud%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004465.MP4)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)

#### Graph Analysis of CDR Records
Uses graph analysis to identify communities and key influencers within Call Data Records.  This uses Script Table Operator to invoke external procedures to work inside the Vantage database without exporting data.<br>
[Python-SQL Version](./UseCases/Graph_Analysis/Graph_Analysis_PY_SQL.ipynb)

#### Green Manufacturing
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.<br>
[Python-SQL Version](./UseCases/Green_Manufacturing/Green_Manufacturing_PY_SQL.ipynb)

#### Heart Failure Prediction
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.<br>
[Python-SQL Version](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_PY_SQL.ipynb)

#### Hyper-Personalization
Hyper-personalization creates models from customer iteractions on multiple channels to determine the "Next Best Offer" for the individual.<br>
[Python-SQL Version](./UseCases/Hyper_Personalization/Hyper_Personalization_PY_SQL.ipynb)

#### K-Means Clustering and ML model
This uses the unsupervised K-Means ML algorithm to identify patterns in retail purchases.<br>
[SQL Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_SQL.ipynb)

#### Marketing Campaign Effectiveness
Examines the results of campaigns by various customer attributes then uses correlation, outlier elimination, and machine learning to identify the best campaigns.<br>
[Python-SQL Version](./UseCases/Marketing_Campaign_Effectiveness/Marketing_Campaign_Effectiveness_Preditction_PY_SQL.ipynb)

#### Multi-Touch Attribution for Business Analyst
This is a somewhat simplified version of the Multi-Touch Attribution demonstration focused on the interests of the Business Analyst vs the Data Scientist.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via  single touch and multi-touch rule-based models, and using statistical, and algorithmic models. Multiple approaches are demonstrated since each has strengths and limitations.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Predictive Maintenance
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.<br>
[Python-SQL Version](./UseCases/Predictive_Maintenance/Predictive_Maintenance_PY_SQL.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

#### Retail Item Demand Forecast
Predicts demand for retail products showing how multiple models can be run concurrently.<br>
[Python-SQL Version](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

#### Store Sales Forecast via Prophet
Uses the Script Table Operator (STO) to run the H20 machine learning library as an extension to ClearScape Analytics.  H20 runs in parallel inside the Vantage database without exporting data to another platform.<br>
[Python-SQL Version](./UseCases/Store_Sales_Forecasting_Prophet_STO/Store_Sales_Forecasting_Prophet_STO_PY_SQL.ipynb)

#### Telco Customer Churn
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.<br>
[Python-SQL Version](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_PY_SQL.ipynb) &ensp; [Video](.//https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Telco%20Customer%20Churn%20Use%20Case%20Demo%20-%20External%20-%20SP004520.MP4)

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

#### VAL Analytics and ML
Demonstration of Vantage Analytic Library scoring and analytic functions like linear regression, decision trees, K-Means clustering, Factor Analysis, etc.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Analytics_and_ML_SQL.ipynb)

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xModelOps'></a>
### ModelOps

#### 00 ModelOps Introduction
This introduction and table of contents introduces you to ModelOps and provides a launch for ModelOps. It is **recommended** to go through ModelOps demonstrations in sequence.<br>
[Information](./ModelOps/00_ModelOps_Introduction.ipynb)

#### 01 ModelOps Getting Started
This introduces the ModelOps methodology, provides an overview video, and a description of navigating the projects, models, and datasets plus a description of monitoring capabilities.<br>
[Python Version](./ModelOps/01_ModelOps_Getting_Started.ipynb)

#### 02 Explore Diabetes Data
This is a guide through the PIMA Diabetes prediction including data exploration and model experimentation.<br>
[Python Version](./ModelOps/02_ModelOps_PIMA_Experimentation.ipynb)

#### 03 ModelOps Operationalize PMML
Covers the ModelOps operationalizing of Bring-your-own-model (BOYM) importing a model via PMML.  PMML allows exchange predictive models produced by data mining and machine learning algorithms.<br>
[Python Version](./ModelOps/03_ModelOps_BYOM_PIMA_PMML.ipynb)

#### 04 Modelops Operationalize ONNX
Covers the ModelOps operationalizing of the ONNX model format for BYOM for the Diabetes use case. ONNX is an efficient model format primarily related to neural networks.<br>
[Python Version](./ModelOps/04_ModelOps_BYOM_PIMA_ONNX.ipynb)

#### 05 ModelOps Operationalize H2O
Covers the ModelOps operationalizing of the H2O model format for BYOM for the Diabetes use case. H2O is an open source, distributed in-memory machine learning library with linear scalability.<br>
[Python Version](./ModelOps/05_ModelOps_BYOM_PIMA_H2O.ipynb)

#### 06 ModelOps Project Setup
Shows you how to set up your own GIT repository for models and create a new project in ModelOps associated with your new repository. This step is **required** for the next notebooks.<br>
[Python Version](./ModelOps/06_ModelOps_GIT_Project_Setup.ipynb)

#### 07 ModelOps Define Functions
For the project you've created in ModelOps, this shows definition of the training function, evaluate function, scoring function, life cycle, and monitoring.<br>
[Python Version](./ModelOps/07_ModelOps_GIT_PIMA_Python_Indb_GLM.ipynb)

#### 08 ModelOps Add H20 to Project
Demonstrates the use of ModelOps to finalize the H2O AI model, train, evaluate, approve, deploy, score and monitor.<br>
[Python Version](./ModelOps/08_ModelOps_GIT_PIMA_Python_H2OAutoML.ipynb)

#### 09 ModelOps Add XGBoost to Project
Uses XGBoost algorithm to generate both Python Joblib and PMML model formats and operationalize them through ModelOps.<br>
[Python Version](./ModelOps/09_ModelOps_GIT_PIMA_Python_XGboost.ipynb)

#### 10 ModelOps Add R gbm Model to Project
Uses the gbm R package to generate both R model formats and operationalize through ModelOps. The gbm R packages extends Freund & Schapire's AadaBoost algorithm and Friedman's **G**radient **B**oosting **M**achine (gbm).<br>
[Python Version](./ModelOps/10_ModelOps_GIT_PIMA_R_GBM.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xObject-Storage'></a>
### Object Storage

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python-SQL Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_PY_SQL.ipynb)

#### Deep History via Object Store
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.<br>
[SQL Version](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)

#### Sensor Data Analytics
Creative application of geospatial to locations of sensors in  a research lab and integration of data from tables with detailed recordings on cloud storage.<br>
[Python-SQL Version](./UseCases/Sensor_Data_Analytics/Sensor_Data_Analytics_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Banking Customer Churn
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.<br>
[Python Version](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)

#### Dataiku
Discusses how the 3rd party tool DataIku can be used with Vantage.<br>
[Information](./UseCases/Dataiku/Dataiku.ipynb)

#### Diabetes Prediction via BYOM H2O
This uses BYOM to import a trained H2O model to identify potential diabetes patients. BYOM allows the data scientist to create models in languages they prefer and run at scale inside Vantage without moving data.<br>
[Python-SQL Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_BYOM_H2O_PY_SQL.ipynb)

#### Energy Consumption Forecasting
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)

#### Energy Consumption Forecasting Dataiku
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_PY_SQL.ipynb)

#### teradataml Python Basics
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.<br>
[Python Version](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Broken Digital Journey
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.<br>
[Python Version](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Broken%20Digital%20Journeys%20CX%20Solution%20Accelerator%20Demo%20via%20Python%20Video%20-%20External%20-%20SP004183%20(1).MP4)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_PY_SQL.ipynb)

#### Financial Customer Journey
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness<br>
[SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Financial%20Customer%20Journey%20Use%20Case%20Demo%20-%20External%20-%20SP004464.MP4) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

#### Knee Replacement Attribution
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.<br>
[SQL Version](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)

#### Knee Replacement nPath
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.<br>
[Python Version](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)

#### MultiTouch Attribution
Shows rule-based, Statistics, and Algorithmic attribution of the marketing touchpoints leading to conversion. Ten approaches will be demonstrated along with path analysis of effectiveness and cost of conversion.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xText-Analysis'></a>
### Text Analysis

#### Customer 360
This integrates data about customers from multiple sources using multiple matching techniquest to create the "Golden Customer Record" and calculate LTV.<br>
[SQL Version](./UseCases/Customer360/CustomerIdentityMatching_SQL.ipynb)

#### Text Term Frequency
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.<br>
[SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb) &ensp; [Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb)

#### VAL Descriptive Statistics
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTime-series-analytics'></a>
### Time series analytics

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb) &ensp; [Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb)

#### Air Passenger Forecasting
Applies Auto Regressive Integrated Moving Average (ARIMA) analysis to forecast airplane passenger volume.<br>
[SQL Version](./UseCases/Air_Passenger_Forecasting/Air_Passenger_Forecasting_SQL.ipynb)

#### Carbon Footprint Analytics
A key component of ESG is Carbon Footprint. This demonstrates a part of a solution available from Teradata to integrate multiple data sources to calculate carbon footprint of various corporate activities.<br>
[Python-SQL Version](./UseCases/Carbon_Footprint_Analytics/Carbon_Footprint_Analytics_PY_SQL.ipynb)

#### Cash Demand Forecasing
Predicts the future demand for cast in Automatic Teller Machines (ATMs) using Auto Regressive Integrated Moving Average  (ARIMA) using In-Database functions.<br>
[SQL Version](./UseCases/Cash_Demand_Forecasting/Cash_Demand_Forecasting_SQL.ipynb)

#### Consumer Complaints
Uses government consumer complaint data with SQL queries and visualizations to identify source of top complaints.<br>
[SQL Version](./UseCases/Consumer_Complaints/Consumer_Complaints_SQL.ipynb)

#### Energy Consumption Forecasting
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)

#### Fourier Transforms
Fourier transformations are demonstrated to filter out noise from signals to allow identification of underlying patterns.<br>
[SQL Version](./UseCases/Fourier_Transforms/Fourier_Transforms_SQL.ipynb)

#### Insurance Policy Temporal
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.<br>
[SQL Version](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)

#### NYC Taxi Temporal
Time series data can answer the questions about what was happening at a point in time. This applies Time series and temporal capabilities  of vantage to NYC taxi data.<br>
[SQL Version](./UseCases/NYC_Taxi/NYC_Taxi_Temporal_SQL.ipynb)

#### Retail Demand Forecasting
This creates an ARIMA time series model based on holidays and merchandising activities impacting store sales for a hypermarket retailer.<br>
[Python Version](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)

#### Vantage Query Log Analysis
Analysis of sessions and queries  you executed using the built-in logging facilities of Vantage.<br>
[SQL Version](./UseCases/Vantage_Query_Log_Analysis/Vantage_Query_Log_Analysis_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## 3rd Party Tools

<a id='xAzure-ML'></a>
### Azure ML

#### Energy Consumption Forecasting using AzureML
This leverages the power of AzureML and Teradata Vantage to enhance our machine learning capabilities and enable scalable model scoring to forecast energy consumption.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_AzureML/Energy_Consumption_Forecasting_AzureML.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xCelebrus'></a>
### Celebrus

#### Digital Identity Management
Combines ClearScape Analytics with Celebrus to track unique customers across web sessions and devices to drive personalized experiences<br>
[SQL Version](./UseCases/Digital_Identity_Management/Digital_Identity_Management_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDataiku'></a>
### Dataiku

#### Dataiku
Discusses how the 3rd party tool DataIku can be used with Vantage.<br>
[Information](./UseCases/Dataiku/Dataiku.ipynb)

#### Energy Consumption Forecasting Dataiku
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xR'></a>
### R

#### 10 ModelOps Add R gbm Model to Project
Uses the gbm R package to generate both R model formats and operationalize through ModelOps. The gbm R packages extends Freund & Schapire's AadaBoost algorithm and Friedman's **G**radient **B**oosting **M**achine (gbm).<br>
[Python Version](./ModelOps/10_ModelOps_GIT_PIMA_R_GBM.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

<footer style="padding:10px;background:#f9f9f9;border-bottom:3px solid #394851">©2023 Teradata. All Rights Reserved</footer>

