<img id=Teradata-logo src="./images/CSAE_Header.png" alt="Teradata" width="100%"  /><br>
#ClearScape Analytics™ Demonstrations via Jupyter
 
Welcome to ClearScape Analytics Experience.  This service consists of [multiple demonstrations](#Table-of-Contents) of the industry leading in-database analytics that **you can run on your own**.
You can modify them or use them as examples to use with your own tools against our data or small (not sensitive) data you upload. Each notebook will:
- describe the business situation,
- will attach the needed data from the cloud, and
- walk you step-by-step through the use of the ClearScape Analytics functionality.
 
These are <u>functional</u> demonstrations executed on a tiny platform with small data, but the same functionality is available on all of our platforms up to one with hundreds of nodes and petabytes of data. 
ClearScape Analytics allows you to apply AI, ML and advanced statistics to your data without the cost and complexity of exporting data. 
You can develop sophisticated models on other platforms with your favorite tools and import those models to execute in production at massive scale.
 
If you've never used Jupyter before, we strongly recommend reviewing the **First Time User** section of **Getting Started**. 
You'll find an [**introduction video**](./Getting_Started/Introduction_Video/Introduction_Video_SQL.ipynb) with tips on using this platform. 
There are also tips for you if you just want to <b>[look without programming](#I-am-not-a-programmer)</b>. 
If you have questions or issues, [**click here**](mailto:SC230208@teradata.com?subject=ClearScape%20Analytics%20Jupyter%20Question) to send an e-mail to ClearScape Analytics Support.<br><br>
 
---

<a id='toc'></a>
## Table of Contents
*Items in italics are coming soon.*

| Getting Started | Industries | Business Function | Analytic Function| 3rd Party Tools|
|-----------|--------------|---------------|--------------- | --------------- |
|<a href='#xFirst-Time-User'>**First Time User**</a>|<a href='#xOpen-Analytics-Framework'>Open Analytics Framework</a>|<a href='#xAutomotive'>Automotive</a>|<a href='#xFinance'>Finance</a>| |<a href='#xAWS-SageMaker'>AWS SageMaker</a>|<a href='#xPython'>Python</a>|<a href='#xAnomaly-Detection'>Anomaly Detection</a>|*Beta Review*|<a href='#xAWS'>AWS</a>|<a href='#xClearScape-Analytic-Functions'>ClearScape Analytic Functions</a>|
|<a href='#xI-am-**not**-a-programmer'>I am **not** a programmer</a>| |<a href='#xEnergy-&-Natural-Resources'>Energy & Natural Resources</a>|<a href='#xMarketing'>Marketing</a>| |<a href='#xAzure-ML'>Azure ML</a>|<a href='#xSQL'>SQL</a>|<a href='#xCustomer-Complaint-Analysis'>Customer Complaint Analysis</a>|<a href='#xNew'>New</a>|<a href='#xGoogle'>Google</a>|<a href='#xVantage-Database-Functions'>Vantage Database Functions</a>|
|<a href='#xDeveloper-Information'>Developer Information</a>| |<a href='#xFinancial'>Financial</a>| | |<a href='#xCelebrus'>Celebrus</a>| |<a href='#xEnterprise-Feature-Store'>Enterprise Feature Store</a>|<a href='#xParallel-CPU-Inferencing'>Parallel CPU Inferencing</a>|<a href='#xAzure'>Azure</a>|<a href='#xModel-Pipelines'>Model Pipelines</a>|
|<a href='#xExperienceBot'>ExperienceBot</a>| |<a href='#xHealthcare'>Healthcare</a>| | |<a href='#xDataiku'>Dataiku</a>| |*Model Factory*|<a href='#xDashboard-Notebook'>Dashboard Notebook</a>| |<a href='#xTeradata-Packages'>Teradata Packages</a>|
|<a href='#xDemo-Introduction'>Demo Introduction</a>| |<a href='#xManufacturing'>Manufacturing</a>| | |<a href='#xH2O.ai'>H2O.ai</a>| |<a href='#xEnd-to-End'>End-to-End</a>|<a href='#xEFS'>EFS</a>| | |
| | |<a href='#xRetail'>Retail</a>| | |*Microsoft PowerBI*| | | | | |
| | |<a href='#xTelco'>Telco</a>| | |*MicroStrategy*| | | | | |
| | |<a href='#xTravel-&-Transportation'>Travel & Transportation</a>| | | |<a href='#xR'>R</a>| | | | |
| | |<a href='#xDefense'>Defense</a>| | |*SAP Business Objects*| | | | | |
| | | | | |<a href='#xSAS'>SAS</a>| | | | | |
| | | | | |*Tableau*| | | | | |
| | | | | |<a href='#xVertex-AI'>Vertex AI</a>| | | | | |
| | | | | |<a href='#xAWS-Bedrock'>AWS Bedrock</a>| | | | | |



#### 
<br>


---

## Getting Started

<a id='xFirst-Time-User'></a>
### First Time User

#### Using the Vantage Enterprise Feature Store Functions
Work through a series of practical exercises that demonstrate how to use the Enterprise Feature Store capabilities in Vantage. <br>
[Python Version](./FeaturePreview/Enterprise_Feature_Store/EFS_Getting_Started_Python.ipynb)

#### Getting Started With Azure
Follow these steps to create your first Azure account and create an Azure Machine Learning workspace to complete our AzureML use cases.<br>
[Information](./UseCases/Energy_Consumption_Forecasting_AzureML/Getting_Started_with_Azure.ipynb)

#### Getting Started with Azure OpenAI
Follow these instructions to setup the Azure OpenAI endpoint and generate the access Keys required to run the model.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Azure-OpenAI.ipynb)

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

#### Charting and Visualizations using teradataml
The td_plot method streamlines large-scale visualizations by providing users with efficient tools to create visualizations directly within the Vantage platform<br>
[Python Version](./Getting_Started/Charting_and_Visualization/InDB_Visualizations_using_teradataml.ipynb)

#### Data Loading (Python)
Shows how to use python to load CSV data from local storage and from zipped files<br>
[Python Version](./Getting_Started/Data_Loading/Data_Loading_Python.ipynb)

#### Data Loading (SQL)
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[SQL Version](./Getting_Started/Data_Loading/Data_Loading_SQL.ipynb)

#### Query Service REST API
Demonstration of using REST API calls to Vantage which is useful for web or mobile applications to access and maintain data.<br>
[Python Version](./UseCases/Query_Service/Query_Service.ipynb)

#### Using ClearScape Analytics with openAI
To ensure optimal utilization of the OpenAI API in generative AI notebooks, it is essential to establish the API keys correctly. This concise guide outlines the process of configuring OpenAI API keys for seamless integration across multiple notebooks.<br>
[Information](./UseCases/Openai_setup_api_key/Openai_setup_api_key.md)

#### Convert PySpark to teradatamlspk
Convert a PySpark script to teradatamlspk syntax and generate a HTML report using Housing Prices to generate price predictions.<br>
[Python Version](./Getting_Started/PySpark_to_Teradataml/HousingPrices_pyspark_to_tdml.ipynb)

#### tdplyr R Basics
Work through using the bgasics of the Teradata R package, tdplyr<br>
[R Version](./Getting_Started/tdplyr_R_Basics/tdplyr_R_Basics.ipynb)

#### Vantage Query Log Analysis
Analysis of sessions and queries  you executed using the built-in logging facilities of Vantage.<br>
[SQL Version](./UseCases/Vantage_Query_Log_Analysis/Vantage_Query_Log_Analysis_SQL.ipynb)

#### Data Loading ('R')
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[R Version](./Getting_Started/Data_Loading/Data_Loading_R.ipynb)

#### Execute Custom Python Scripts in Vantage
Run an external custom python script in Vantage using Script Table Operator(STO) to execute custom python scripts on Vantage<br>
[Python Version](./Getting_Started/Script_Table_Operator/Getting_Started_STO_Python.ipynb)

#### Tutorial on using Teradataml Widgets
Use Teradataml Widgets to display interactive prompting to generate datasets from the Vantage database.<br>
[Python Version](./Getting_Started/Teradataml_Widgets/Tutorial.ipynb)

#### Introduction to Plot types using Teradataml Widgets.
This is an introduction to using the various Plot types available as widgets: Line, Bar, Mesh, Wiggle, Geometry, etc.<br>
[Python Version](./Getting_Started/Teradataml_Widgets/Plot_Notebook.ipynb)

#### Teradata Package for R Basics
Discoverer how the Teradata Package for R (tdplyr) allows users to develop and run R programs to take advantage of Big Data and Machine Learning analytic capabilities of Vantage.<br>
[Information](Getting_Started/tdplyr_R_Basics/tdplyr_R_Basics.ipynb)

#### Initiate Parallel CPU Inferencing of Hugging Face Models in Vantage
Execute this notebook first to prepare the environment to demonstrate Parallel CPU Inferencing of Hugging Face Models in Vantage<br>
[Python Version](./UseCases/Language_Models_InVantage/Initialization_and_Model_Load.ipynb)

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
<a id='xExperienceBot'></a>
### ExperienceBot

#### Search all notebooks with a ChatBot
Run this notebook to search all notebooks with a ChatBot.<br>
[Python Version](./ExperienceBot/ExperienceBot_NoCode.ipynb)

#### Search all notebooks with a ChatBot using Vantage
Run this notebook to search all notebooks with a ChatBot and Database connectivity.<br>
[Python Version](./ExperienceBot/ExperienceBot.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDemo-Introduction'></a>
### Demo Introduction

#### End-to-End Demo for Customer Churn in Telco
Introduction to the traditional and automated approaches of building models to identify and predict customer churn.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Introduction_Teradata_End_to_End_Telco_Customer_Churn.ipynb)

#### End-to-End Demo for Financial Fraud Detection using Vantage
Introduction to the traditional and automated approaches of building models to detect fraud.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Introduction_Teradata_End_to_End_Financial_Fraud_Detection.ipynb)

#### Teradata Use Case Solution Offerings
Find out how Teradata can help you deliver better customer experience, build customer loyalty, and accelerate value leveraging the most powerful, open, and connected AI/ML capabilities on the market through our use case solution offerings<br>
[Information](./BusinessSolutions/BusinessSolutionsOfferings.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## VantageCloud Lake

<a id='xOpen-Analytics-Framework'></a>
### Open Analytics Framework

#### Simplify Text Analytics with Teradata Python for Generative AI
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Text_Analytics_teradatagenai_AWS/text_analytics_teradatagenai_aws_huggingface.ipynb)

#### Unstructured Text Analysis With BYO-LLM and NVIDIA GPU Acceleration
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Entity_Recognition_BYOLLM/Entity_Recogntion_BYOLLM_VCL.ipynb)

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
[Python Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_Python.ipynb)

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

#### Anomaly Detection of Outstanding Amounts
Anomaly detection in bank accounts can help in identifying unusual patterns, potentially flagging issues like errors or fraudulent activities.  Enterprise re-use of Features ensures rapid creation & deployment of models while new Features can be created and used without extensive engineering support.<br>
[Python Version](./UseCases/AnomalyDetection_OutstandingAmount_FS/AnomalyDetection_OutstandingAmount_FeatureStore.ipynb)

#### Credit Card Data Preparation
Uses functions from TeradataML Python library to prepare data for analysis using data cleansing, exploration and feature engineering functions.<br>
[Python Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_Python.ipynb)

#### Mortgage Calculator using GenAI
Use Retrieval-Augmented Generation (RAG), Lanchain and LLM models to as questions about loans and retrieve relevant data from Vantage.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python.ipynb)

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
[Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

#### Financial Fraud Detection InDB
Detect financial transaction fraud  using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Fraud_Detection_Use_Case_Demo_SP004465.MP4)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)

#### Flood Proximity to Climate Risk Analysis
This allows enterprises to rapidly analyze this geographic-related information in real-time at any scale - effectively understanding the impacts of these climate events on entire populations.<br>
[Python Version](./UseCases/Flood_Proximity_Analysis/Flood_Proximity_Analysis_Python.ipynb)

#### Insurance Policy Temporal
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.<br>
[SQL Version](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)

#### Credit Risk Assessment using Teradataml OpenSource Functions
Use inDb functions with OpensourceML to create multiple DecisionTreeClassifiers to create multiple predictions of a Credit Risk Assessment.<br>
[Python Version](./UseCases/Credit_Risk_Assessment/Credit_Risk_Assessment_Python.ipynb)

#### Financial Fraud Detection InDB
Detect financial transaction fraud using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [R Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_R.ipynb)

#### Mortgage Calculator Chatbot using GenAI: Finetune LLM
Fine-tuned an OpenAI model using RAG, LangChain and LLM models framework.  Query a chatbot for answers about a mortgage and available housing within a predefiend area.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_Finetune_LLM.ipynb)

#### Mortgage Calculator chatbot using GenAI: RAG
Build a conversational chatbot and ask questions about a mortgage and available housing within a predefined area using LangChain.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Mortgage Calculator Chatbot using Trusted AI(RAG)
Experience the integration of LLM models to provide user-friendly responses to queries.  RAG combines retrieval and generative approaches.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Banking Churn Prediction with AutoML
Implement the entire lifecycle of churn prediction using BYOM, VAL and AutoML.<br>
[Python Version](./UseCases/Banking_Customer_Churn_AutoML/Banking_AutoML.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xHealthcare'></a>
### Healthcare

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
[Python-SQL Version](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_Python.ipynb)

#### Knee Replacement Attribution
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.<br>
[SQL Version](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)

#### Knee Replacement nPath
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.<br>
[Python Version](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)

#### Cancer Prediction using the TDAPIClient and VertexAI
Use TDAPIClient to connect to the Google Cloud Vertex API Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker. Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_VertexAI_CustomModel.ipynb)

#### Mental Health Chat with Fine-tuned OpenAI Model
Train a GPT-3.5 Turbo model using the OpenAI API endpoint.  Ask mental health questions using a chat input box.<br>
[Python Version](./UseCases/Fine_Tuning_OpenAI_Model/Fine_Tuning_OpenAI_Model_Python.ipynb)

#### Parkinson's Disease Prediction using Signal Processing
Detect Parkinson's Disease at an early stage by using Vantage InDB functions for model training and scoring to compare the performance of two models against biomedical voice measurements.<br>
[Python Version](./UseCases/Parkinsons_Disease_Prediction/Parkinsons_Disease_Prediction_Python.ipynb)

#### Predicting Medical Expenses in Healthcare
Use a dataset containing variables like age, sex, BMI, smoking status, number of children, and region to build machine learning models that accurately predict healthcare costs for insurance policyholders, taking into account factors that affect medical expenses.<br>
[Python Version](./UseCases/Health_Insurance/Health_Insurance_Costs_Python.ipynb)

#### Cancer Prediction using Teradata and the SageMaker API
Use the Vantage SageMaker API feature to connect to an Amazon Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker.  Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_Sagemaker.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xManufacturing'></a>
### Manufacturing

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_Python.ipynb)

#### Car Complaints
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.<br>
[Python-SQL Version](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)

#### Green Manufacturing
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.<br>
[Python Version](./UseCases/Green_Manufacturing/Green_Manufacturing_Python.ipynb)

#### Predictive Maintenance
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.<br>
[Python-SQL Version](./UseCases/Predictive_Maintenance/Predictive_Maintenance_Python.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

#### Anomaly Detection in Spot Welding Process - Trusted AI
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python Version](./UseCases/Anomaly_Detection/Anomaly_Detection_Python_TrustedAI.ipynb)

#### Smoothma function in Vantage
Apply smoothing to a time series to highlight the mean of that series.<br>
[Python Version](./Recipes/ClearScape_Functions/Smoothma.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xRetail'></a>
### Retail

#### Product Recommentations via TDApiClient
Build a product recommendation system using OpenAI embeddings and Vantage in db_function VectorDistance. We will also use Vantage as VectorDB, to store the embeddings.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_using_TDAPIClient_Python.ipynb)

#### Broken Digital Journey
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.<br>
[Python Version](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Broken%20Digital%20Journeys%20CX%20Solution%20Accelerator%20Demo%20via%20Python%20Video%20-%20External%20-%20SP004183%20(1).MP4)

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_SQL.ipynb)

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
This version of the Multi-Touch Attribution demonstration is focused on the interests of the Business Analyst.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via single touch and multi-touch rule-based models using statistical and algorithmic models. Multiple approaches are demonstrated.<br>
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
[Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)

#### Customer Reviews Analysis using GenAI
Customer reviews analysis is a crucial aspect of understanding customer sentiment and preferences. By leveraging the power of OpenAIEmbeddings and Vantage InDB Analytic Function, we can gain valuable insights from customer reviews.<br>
[Python Version](./UseCases/Customer_reviews_analysis_using_GenAI/Customer_reviews_analysis_using_GenAI_Python.ipynb)

#### DIFF and UNDIFF functions in Vantage
Transform a stationary, seasonal, or non-stationary time series into a differenced time series and then reverse it.<br>
[Python Version](./Recipes/ClearScape_Functions/DIFF_UNDIFF.ipynb)

#### Product Recommendation via AWS Bedrock
Use AWS Bedrock, Embedding from HuggingFace and Vantage in-DB functions to assist in providing product recommendations to develop a recipe assistant chatbot.<br>
[Python Version](./UseCases/Chat_Powered_Product_Recommendation/Chat_powered_product_recommendation_based_on_search_output.ipynb)

#### Resample function in Vantage
Transform an irregular time series into a regular time series.<br>
[Python Version](./Recipes/ClearScape_Functions/Resample.ipynb)

#### SeasonalNormalize and Unnormalize functions in Vantage
Take a non-stationary series and normalize it.  Then unnormalize the series to produce a forcasted series.<br>
[Python Version](./Recipes/ClearScape_Functions/SeasonalNormalize_UnNormalize.ipynb)

#### Solve complex inventory issues with Vantage In-DB functions.
Use resampling to fill-in missing data, find phantom inventory, show key inventory metrics, calculate safe stock levels.<br>
[SQL Version](./UseCases/Inventory_Management/Inventory_Management_SQL.ipynb)

#### Feature Store and Feature Engineering using tdfs4ds
Setup and deploy a Feature Store and then continue with the process of Feature Engineering.<br>
[Python Version](./Recipes/Feature_Store_Feature_Engg/Feature_Engineering_and_Feature_Store_Usage.ipynb)

#### Natural Language Processing
Use NLP for Sentiment Analysis, perform Kmeans clustering, execute Principal Component Analysis (PCA) using comments received by a Retail Store<br>
[Python-SQL Version](./UseCases/Natural_Language_Processing/Natural_Language_Processing_Python.ipynb)

#### Enhance Product Hierarchies with In-DB K-means Clustering
Enhance a product hierarchy by leveraging time series analysis and clustering techniques<br>
[Python Version](./UseCases/Retail_Product_Hierarchy/Retail_Product_Hierarchy_Clustering_Python.ipynb)

#### Generate Teradata SQL with GenAI and AWS Bedrock
In this demo, we use AWS Bedrock's LLMs and LangChain to create a text-to-Teradata SQL agent.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI_Bedrock/AWS_Bedrock_LangChain_Text_to_SQL.ipynb)

#### Sales Forecasting using Teradata AUTOARIMA
Forecast the amount of future sales by developing a time-series modelling pipeline using Vantage and In-DB analytics<br>
[Python Version](./UseCases/Sales_Forecasting_AutoArima/Sales_Forecasting_AutoArima_Python.ipynb)

#### ACF and PACF Functions in Vantage
Convert time series data and then normalize it. Then calculate the partial autocorrelation coefficients using the LEVINSON_DURBIN algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/ACF_PACF.ipynb)

#### Arima Functions in Vantage
Execute the Arima Functions: ArimaEstimate, ArimaValidate, and ArimaForecast and use teradataml to create graphs with results.<br>
[Python Version](./Recipes/ClearScape_Functions/Arima.ipynb)

#### Convolve Function in Vantage
Use this function to convolve two series into new time series using the CONV_DFFT algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve.ipynb)

#### Convolve2 Function in Vantage
Convolve 2 matching payload fields of 2 matrices into a new source matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve2.ipynb)

#### Kmeans and KMeansPredict Functions in Vantage
Group a set of observations into k clusters in which each observation belongs to the cluster with the nearest mean.  Then predict a target class.<br>
[Python Version](./Recipes/ClearScape_Functions/KMeans_KMeansPredict.ipynb)

#### SentimentExtractor Function in Vantage
Search a customer's comments and evaluate the sentiments. Return a list of sentiment words along with their scores.<br>
[Python Version](./Recipes/ClearScape_Functions/SentimentExtractor.ipynb)

#### SVM and SVMPredict Functions in Vantage.
Perform classification and regression analysis on datasets<br>
[Python Version](./Recipes/ClearScape_Functions/SVMandSVMPredict.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTelco'></a>
### Telco

#### Telco 5G Quality of Experience
Quality of service analysis of 5G vs 4G video for different situations such as Indoor, outdoor, and moble.<br>
[SQL Version](./UseCases/Telco_5G_QOE_Analysis/Telco_5G_QOE_Analysis_SQL.ipynb)

#### Graph Analysis of CDR Records
Uses graph analysis to identify communities and key influencers within Call Data Records.  This uses Script Table Operator to invoke external procedures to work inside the Vantage database without exporting data.<br>
[Python-SQL Version](./UseCases/Graph_Analysis/Graph_Analysis_PY_SQL.ipynb)

#### Telco Customer Churn
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.<br>
[Python Version](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Telco%20Customer%20Churn%20Use%20Case%20Demo%20-%20External%20-%20SP004520.MP4)

#### Telco Network Coverage
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.<br>
[Python Version](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_Python.ipynb)

#### Telco Churn using Enterprise Feature Store
analyzing a time series of data, where each data point represents the outstanding amount at the end of each month. To detect anomalies,<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_EFS.ipynb)

#### Telco Churn using Feature Store in Vantage
Detect anomalies in monthly bill amounts to detect and prevent churn using pre-calculated features stored in Vantage.<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_tdfs4ds_Feature_Store.ipynb)

#### Telco_EndtoEnd_ModelOps_GIT_Python_indb_DF.ipynb
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_Traditional_Approach.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTravel-&-Transportation'></a>
### Travel & Transportation

#### Chatbot using GenAI with insurance PDF document
Uses TD_VectorDistance in Vantage to create a chatbot using Retrieval-Augmented Generation (RAG),  Langchain, and LLM to answer questions using a 24 page travelers insurance policy PDF as source data to answer questions about coverage.<br>
[Python Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_OpenSource_GenAI_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_VantageDB_GenAI_Python.ipynb)

#### Shipping Time Prediction
Use ClearScape Analytics to develop a robust system that can reliably estimate delivery dates, accounting for handling time, transit time, and other relevant variables affecting the actual delivery timeframe.<br>
[Python-SQL Version](./UseCases/Shipping_Time_Prediction/Shipping_Time_Prediction_PY_SQL.ipynb)

#### Supply Chain Visibility
Shows the integration of data from warehouse, trucking company, and customer Order Management Systems (OMS) using temporal  to reconcile different update frequencies and show rerouting when warehouse is unavailable.<br>
[Python Version](./UseCases/Supply_Chain_Visibility/Supply_Chain_Visibility_Python.ipynb)

#### Vehicle Routing for Delivery
Demonstrates advanced analytics to find lowest cost routes to deliver a large volume of packages by a fleet of vehicles.<br>
[Python-SQL Version](./UseCases/Vehicle_Routing_Delivery/Vehicle_Routing_Delivery_STO_PY_SQL.ipynb)

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)

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
<a id='xDefense'></a>
### Defense

#### Signal Processing and Classification
Use the Unbounded Array Framework in ClearScape Analytics to classify sonar signals. Extract and engineer features to use in training and scoring our models.<br>
[Python Version](./UseCases/Signal_Processing_and_Classification/Signal_Processing_and_Classification_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Business Function

<a id='xFinance'></a>
### Finance

#### CategoricalSummary function in Vantage
Display distinct values and counts for a column in a Banking dataset<br>
[Python Version](./Recipes/ClearScape_Functions/CategoricalSummary.ipynb)

#### ColumnSummary function in Vantage
Summarize a column and return standard values like positive, negative, nulls, zeros, etc.<br>
[Python Version](./Recipes/ClearScape_Functions/ColumnSummary.ipynb)

#### Ftest function in Vantage
Compare the variance of two independent populations<br>
[Python Version](./Recipes/ClearScape_Functions/FTest.ipynb)

#### GetFutileColumns function in Vantage
Interrogate a table to discover which columns would have no impact on creating a model.<br>
[Python Version](./Recipes/ClearScape_Functions/GetFutileColumns.ipynb)

#### GetRowsWithMissingValues function in Vantage
Display rows that have NULL values in a specified data column<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithMissingValues.ipynb)

#### GetRowsWithoutMissingValues function in Vantage
Explore the rows of a dataset that have non-NULL values in specific columns.<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithoutMissingValues.ipynb)

#### LinearRegr function in Vantage
Fit data to a curve using a formula that defines the relationship between the explanatory variable and the response variable.<br>
[Python Version](./Recipes/ClearScape_Functions/LinearRegr.ipynb)

#### ModelOps Notebook Scheduling using BYOM
Users can deploy and schedule notebook jobs, with execution logs available in both HTML and notebook formats.<br>
[Python Version](./ModelOps/16_ModelOps_Notebook_Scheduling.ipynb)

#### MultivarRegr function in Vantage
Use a formula that defines the relationship between the explanatory variable and multiple response variables.<br>
[Python Version](./Recipes/ClearScape_Functions/MultivarRegr.ipynb)

#### SimpleImputeFit and SimpleImputeTransform functions in Vantage
Use the two functions to impute missing values in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/SimpleImputeFitandTransform.ipynb)

#### UnivariateStatistics function in Vantage
Use the UnivariateStatistics function available in Vantage  to explore the descriptive statistics of a dataset<br>
[Python Version](./Recipes/ClearScape_Functions/UnivariateStatistics.ipynb)

#### WhichMax function in Vantage
Use the WhichMax function to explore a dataset.  Displays all rows that have the maximum value in a specified input table column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMax.ipynb)

#### WhichMin function in Vantage
Use the WhichMin function to return a specified minimum value in a specified table's column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMin.ipynb)

#### Automatic Data Pre-Processing with tdprepview
Prepare datasets for tabular supervised or unsupervised machine learning. Prepare data to predict customer churn for a bank.<br>
[Python Version](./Recipes/tdprepview/Automatic_DataPreprocessing_tdprepview.ipynb)

#### End-to-End Demo for Financial Fraud Detection using Vantage
Introduction to the traditional and automated approaches of building models to detect fraud.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Introduction_Teradata_End_to_End_Financial_Fraud_Detection.ipynb)

#### OrdinalEncodingFit and OrdinalEncodingTransform in Vantage
Analyze banking data to see if customer geography is influencing churn.<br>
[Python Version](./Recipes/ClearScape_Functions/OrdinalEncodingFitandTransform.ipynb)

#### Pack and Unpack Functions in Vantage
Store virtual columns from a dataframe in one physical column and then extract them back into multiple dataframe columns.<br>
[Python Version](./Recipes/ClearScape_Functions/Pack_Unpack.ipynb)

#### PolynomialFeaturesFit and PolynomialFeaturesTransform Functions in Vantage
Use these functions to find non-linear relationships between different customer attributes.<br>
[Python Version](./Recipes/ClearScape_Functions/PolynomialFeaturesFitandTransform.ipynb)

#### RowNormalizeFit and RowNormalizeTransform Functions in Vantage
Discover how row-wise normalization can standardize financial metrics like CreditScore, Balance, and EstimatedSalary for better comparisons.<br>
[Python Version](./Recipes/ClearScape_Functions/RowNormalizeFitandTransform.ipynb)

#### ScaleFit and ScaleTransform Functions in Vantage
Standardize values to a comparable range, making them suitable for machine learning models without being influenced by original magnitudes.<br>
[Python Version](./Recipes/ClearScape_Functions/ScaleFitandTransform.ipynb)

#### TargetEncodingFit and TargetEncodingTransform Functions in Vantage
Apply Target Encoding to replace categorical values with statistically meaningful numerical representations based on the churn rate (Exited).<br>
[Python Version](./Recipes/ClearScape_Functions/TargetEncodingFitandTransform.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
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
This version of the Multi-Touch Attribution demonstration is focused on the interests of the Business Analyst.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via single touch and multi-touch rule-based models using statistical and algorithmic models. Multiple approaches are demonstrated.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Analytic Function

<a id='xARIMA'></a>
### ARIMA

#### Cash Demand Forecasing
Predicts the future demand for cast in Automatic Teller Machines (ATMs) using Auto Regressive Integrated Moving Average  (ARIMA) using In-Database functions.<br>
[SQL Version](./UseCases/Cash_Demand_Forecasting/Cash_Demand_Forecasting_SQL.ipynb)

#### Sales Forecasting using Teradata AUTOARIMA
Forecast the amount of future sales by developing a time-series modelling pipeline using Vantage and In-DB analytics<br>
[Python Version](./UseCases/Sales_Forecasting_AutoArima/Sales_Forecasting_AutoArima_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xAspect-Based-Sentiment-Analysis'></a>
### Aspect-Based Sentiment Analysis

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xAutoML'></a>
### AutoML

#### Banking Churn Prediction with AutoML
Implement the entire lifecycle of churn prediction using BYOM, VAL and AutoML.<br>
[Python Version](./UseCases/Banking_Customer_Churn_AutoML/Banking_AutoML.ipynb)

#### End-to-End Demo for Financial Fraud Detection using Vantage
Introduction to the traditional and automated approaches of building models to detect fraud.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Introduction_Teradata_End_to_End_Financial_Fraud_Detection.ipynb)

#### Financial Fraud Detection using AutoML
Step through an automated approach of building models to identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_AutoML_Approach.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

#### Telco Churn using Enterprise Feature Store
analyzing a time series of data, where each data point represents the outstanding amount at the end of each month. To detect anomalies,<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_EFS.ipynb)

#### Telco_Customer_Churn_AutoML_Approach.ipynb
Step through an automated approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_EndtoEnd_ModelOps_GIT_Python_indb_AutoML.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaint-Summarization'></a>
### Complaint Summarization

#### Complaints Classification with AWS Bedrock
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Classification.ipynb)

#### Complaints Summarization with AWS Bedrock
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Summarization.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaints-Classification'></a>
### Complaints Classification

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaint-Summarization'></a>
### Complaint Summarization

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaints-Classification'></a>
### Complaints Classification

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaint-Summarization'></a>
### Complaint Summarization

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xComplaints-Clustering'></a>
### Complaints Clustering

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xCustomer-360'></a>
### Customer 360

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xData-Preparation'></a>
### Data Preparation

#### Credit Card Data Preparation
Uses functions from TeradataML Python library to prepare data for analysis using data cleansing, exploration and feature engineering functions.<br>
[Python Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_Python.ipynb) &ensp; [SQL Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)

#### Data Prep and Transformation
This demonstrates a subset of the over 100 analytic functions in the teradataml package for Python<br>
[Python Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_PY_SQL.ipynb)

#### Outlier Analysis
Outliers in an analysis skew the results and make it difficult to recognize the main patterns. ClearScape Analytics has tools to remove outliers automatically.<br>
[SQL Version](./UseCases/Outlier_Analysis/Outlier_Analysis_SQL.ipynb)

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### Data Loading ('R')
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[R Version](./Getting_Started/Data_Loading/Data_Loading_R.ipynb)

#### Predicting Medical Expenses in Healthcare
Use a dataset containing variables like age, sex, BMI, smoking status, number of children, and region to build machine learning models that accurately predict healthcare costs for insurance policyholders, taking into account factors that affect medical expenses.<br>
[Python Version](./UseCases/Health_Insurance/Health_Insurance_Costs_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDescriptive-Statistics'></a>
### Descriptive Statistics

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### VAL Descriptive Statistics
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)

#### VAL teradataml Demo
Demonstrated the use of Teradataml in Python to perform descriptive statistics, transformation, model building model evaluation and scoring.<br>
[Python Version](./UseCases/Vantage_Analytics_Library/VAL_teradataml_Demo_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xEmotion-Detection'></a>
### Emotion Detection

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xFeature-Engineering'></a>
### Feature Engineering

#### Automatic Data Pre-Processing with tdprepview
Prepare datasets for tabular supervised or unsupervised machine learning. Prepare data to predict customer churn for a bank.<br>
[Python Version](./Recipes/tdprepview/Automatic_DataPreprocessing_tdprepview.ipynb)

#### Feature Store and Feature Engineering using tdfs4ds
Setup and deploy a Feature Store and then continue with the process of Feature Engineering.<br>
[Python Version](./Recipes/Feature_Store_Feature_Engg/Feature_Engineering_and_Feature_Store_Usage.ipynb)

#### ModelOps Feature Engineering
Preprocess and transform data within the ModelOps pipeline<br>
[Python Version](./ModelOps/15_ModelOps_Feature_Engineering.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xFraud-Detection'></a>
### Fraud Detection

#### Financial Fraud Detection InDB
Detect financial transaction fraud using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [R Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_R.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGenerative-AI'></a>
### Generative AI

#### Chatbot using GenAI with insurance PDF document
Uses TD_VectorDistance in Vantage to create a chatbot using Retrieval-Augmented Generation (RAG),  Langchain, and LLM to answer questions using a 24 page travelers insurance policy PDF as source data to answer questions about coverage.<br>
[Python Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_OpenSource_GenAI_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_VantageDB_GenAI_Python.ipynb)

#### Mortgage Calculator using GenAI
Use Retrieval-Augmented Generation (RAG), Lanchain and LLM models to as questions about loans and retrieve relevant data from Vantage.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python.ipynb)

#### Product Recommentations via TDApiClient
Build a product recommendation system using OpenAI embeddings and Vantage in db_function VectorDistance. We will also use Vantage as VectorDB, to store the embeddings.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_using_TDAPIClient_Python.ipynb)

#### Generative AI Question Answering
Uses OpenAI to translate english language questions into SQL queries to run against a table of marketing data. This includes a link to a notebook with instructions for getting the required OpenAI API key.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI/Generative_Question_Answering_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Generative%20AI%20Powered%20Search-Based%20Product%20Recommendation%20Use%20Case%20Demo%20-%20External%20-%20SP004561.MP4)

#### Product Recommendations via Open Source
Uses FlagEmbedding from HuggingFace plus Vantage in-database functions to assess the vector distance between the product entered and similar products.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenSource_Python.ipynb)

#### Product Recommendations via OpenAI
Uses OpenAIEmbeddings and Vantage in-database function to assists consumers in receiving product recommendations<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_Python.ipynb)

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Generate Teradata SQL with GenAI and AWS Bedrock
In this demo, we use AWS Bedrock's LLMs and LangChain to create a text-to-Teradata SQL agent.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI_Bedrock/AWS_Bedrock_LangChain_Text_to_SQL.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

#### Customer Reviews Analysis using GenAI
Customer reviews analysis is a crucial aspect of understanding customer sentiment and preferences. By leveraging the power of OpenAIEmbeddings and Vantage InDB Analytic Function, we can gain valuable insights from customer reviews.<br>
[Python Version](./UseCases/Customer_reviews_analysis_using_GenAI/Customer_reviews_analysis_using_GenAI_Python.ipynb)

#### Grocery Recommendations using GenAI
Use context-based product recommendations powered by GenAI Large Language Models to enhance a shopping experience.<br>
[Python-SQL Version](./UseCases/Grocery_Recommendation/Grocery_Recommendation_PY_SQL.ipynb)

#### Mortgage Calculator Chatbot using Trusted AI(RAG)
Experience the integration of LLM models to provide user-friendly responses to queries.  RAG combines retrieval and generative approaches.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Product Recommendation via AWS Bedrock
Use AWS Bedrock, Embedding from HuggingFace and Vantage in-DB functions to assist in providing product recommendations to develop a recipe assistant chatbot.<br>
[Python Version](./UseCases/Chat_Powered_Product_Recommendation/Chat_powered_product_recommendation_based_on_search_output.ipynb)

#### Mortgage Calculator Chatbot using GenAI: Finetune LLM
Fine-tuned an OpenAI model using RAG, LangChain and LLM models framework.  Query a chatbot for answers about a mortgage and available housing within a predefiend area.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_Finetune_LLM.ipynb)

#### Mortgage Calculator chatbot using GenAI: RAG
Build a conversational chatbot and ask questions about a mortgage and available housing within a predefined area using LangChain.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGeospatial'></a>
### Geospatial

#### Supply Chain Visibility
Shows the integration of data from warehouse, trucking company, and customer Order Management Systems (OMS) using temporal  to reconcile different update frequencies and show rerouting when warehouse is unavailable.<br>
[Python Version](./UseCases/Supply_Chain_Visibility/Supply_Chain_Visibility_Python.ipynb)

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)

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
[Python Version](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_Python.ipynb)

#### TD GeoDataFrame to ESRI Conversion
Extract Teradata geospatial data and export it into widely-used formats such as ESRI shapefiles.<br>
[Python Version](./Recipes/TD_Geo_Esri/TD_Geo_Esri.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xHyperparameter-Tuning'></a>
### Hyperparameter Tuning

#### Hyperparameter Tuning using the Titanic Passenger Dataset
Create a predictive algorithm that can identify whethr or not passengers on the Titanic survived the ship's sinking.<br>
[Python Version](./UseCases/TitanicSurvival_HyperParameter/Predict_TitanicSurvival_Hyperparameter_Tuning_Python.ipynb)

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
<a id='xLanguage-Models'></a>
### Language Models

#### Initiate Parallel CPU Inferencing of Hugging Face Models in Vantage
Execute this notebook first to prepare the environment to demonstrate Parallel CPU Inferencing of Hugging Face Models in Vantage<br>
[Python Version](./UseCases/Language_Models_InVantage/Initialization_and_Model_Load.ipynb)

#### Streamlining Analytics with Hyper-Segmented Models
By addressing unique customer behaviors and preferences within specific micro-segments, enhance customer satisfaction, boost operational efficiency, and improve profitability by to deploying and managing hyper-segmented models at scale.<br>
[Python Version](./UseCases/Hyper_Segmented_Models/Hyper_Segmented_Models.ipynb)

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Semantic Similarity using OpenSource Language Models
Run Hugging Face Embedding Model in ONNX format to create some embeddings from a Consumer Complaints dataset<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Similarity_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xLarge-Language-Models'></a>
### Large Language Models

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with AWS Bedrock
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Speech_Recognition.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

#### Complaints Summarization with AWS Bedrock
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Summarization.ipynb)

#### Hugging Face Model using Script Table Operator
Execute a Huggingface model using the Vantage Script Table operator(STO) on Vantage Enterprise.<br>
[Python Version](./Recipes/Huggingface_model_STO_Python/Huggingface_model_STO_Python.ipynb)

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with Google Gemini
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Speech_Recognition.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xMachine-Learning'></a>
### Machine Learning

#### Anomaly Detection of Outstanding Amounts
Anomaly detection in bank accounts can help in identifying unusual patterns, potentially flagging issues like errors or fraudulent activities.  Enterprise re-use of Features ensures rapid creation & deployment of models while new Features can be created and used without extensive engineering support.<br>
[Python Version](./UseCases/AnomalyDetection_OutstandingAmount_FS/AnomalyDetection_OutstandingAmount_FeatureStore.ipynb)

#### Sales Forecasting with Vantage vs SAS
This demo walks through how a typical SAS user would use sales data to build a simple sales forecasting model and then will showcase how we can achieve the same using Vantage ClearScape Analytics.<br>
[Python-SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_SQL.ipynb)

#### Shipping Time Prediction
Use ClearScape Analytics to develop a robust system that can reliably estimate delivery dates, accounting for handling time, transit time, and other relevant variables affecting the actual delivery timeframe.<br>
[Python-SQL Version](./UseCases/Shipping_Time_Prediction/Shipping_Time_Prediction_PY_SQL.ipynb)

#### Telco 5G Quality of Experience
Quality of service analysis of 5G vs 4G video for different situations such as Indoor, outdoor, and moble.<br>
[SQL Version](./UseCases/Telco_5G_QOE_Analysis/Telco_5G_QOE_Analysis_SQL.ipynb)

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
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Fraud_Detection_Use_Case_Demo_SP004465.MP4)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)

#### Graph Analysis of CDR Records
Uses graph analysis to identify communities and key influencers within Call Data Records.  This uses Script Table Operator to invoke external procedures to work inside the Vantage database without exporting data.<br>
[Python-SQL Version](./UseCases/Graph_Analysis/Graph_Analysis_PY_SQL.ipynb)

#### Green Manufacturing
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.<br>
[Python Version](./UseCases/Green_Manufacturing/Green_Manufacturing_Python.ipynb)

#### Heart Failure Prediction
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.<br>
[Python-SQL Version](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_Python.ipynb)

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
This version of the Multi-Touch Attribution demonstration is focused on the interests of the Business Analyst.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via single touch and multi-touch rule-based models using statistical and algorithmic models. Multiple approaches are demonstrated.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### Predictive Maintenance
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.<br>
[Python-SQL Version](./UseCases/Predictive_Maintenance/Predictive_Maintenance_Python.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

#### Store Sales Forecast via Prophet
Uses the Script Table Operator (STO) to run the H20 machine learning library as an extension to ClearScape Analytics.  H20 runs in parallel inside the Vantage database without exporting data to another platform.<br>
[Python-SQL Version](./UseCases/Store_Sales_Forecasting_Prophet_STO/Store_Sales_Forecasting_Prophet_STO_PY_SQL.ipynb)

#### Telco Customer Churn
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.<br>
[Python Version](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Telco%20Customer%20Churn%20Use%20Case%20Demo%20-%20External%20-%20SP004520.MP4)

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

#### VAL Analytics and ML
Demonstration of Vantage Analytic Library scoring and analytic functions like linear regression, decision trees, K-Means clustering, Factor Analysis, etc.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Analytics_and_ML_SQL.ipynb)

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

#### Data Quality Anomaly Detection using Statistical Techniques
Compare the distribution and variation of data between two time intervals usin In-DB function executed via a framework to provide alerts highlighting data anomalies.<br>
[Python Version](./UseCases/Data_Quality_Anomaly_Detection/Data_Quality_Anomaly_Detection_Python.ipynb)

#### Hyperparameter Tuning using the Titanic Passenger Dataset
Create a predictive algorithm that can identify whethr or not passengers on the Titanic survived the ship's sinking.<br>
[Python Version](./UseCases/TitanicSurvival_HyperParameter/Predict_TitanicSurvival_Hyperparameter_Tuning_Python.ipynb)

#### Anomaly Detection in Spot Welding Process - Trusted AI
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python Version](./UseCases/Anomaly_Detection/Anomaly_Detection_Python_TrustedAI.ipynb)

#### Cancer Prediction using the TDAPIClient and VertexAI
Use TDAPIClient to connect to the Google Cloud Vertex API Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker. Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_VertexAI_CustomModel.ipynb)

#### Credit Risk Assessment using Teradataml OpenSource Functions
Use inDb functions with OpensourceML to create multiple DecisionTreeClassifiers to create multiple predictions of a Credit Risk Assessment.<br>
[Python Version](./UseCases/Credit_Risk_Assessment/Credit_Risk_Assessment_Python.ipynb)

#### Financial Fraud Detection InDB
Detect financial transaction fraud using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [R Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_R.ipynb)

#### Predicting Medical Expenses in Healthcare
Use a dataset containing variables like age, sex, BMI, smoking status, number of children, and region to build machine learning models that accurately predict healthcare costs for insurance policyholders, taking into account factors that affect medical expenses.<br>
[Python Version](./UseCases/Health_Insurance/Health_Insurance_Costs_Python.ipynb)

#### Resume Classification Model Training using Vantage In-DB Functions
Use data from a collection of Resume Examples taken from kaggle for categorizing a given resume into any of the labels defined in the dataset. Summarize and ask questions using a ChatBot.<br>
[Python Version](./Resume_Analyzer/Introduction.ipynb)

#### Cancer Prediction using Teradata and the SageMaker API
Use the Vantage SageMaker API feature to connect to an Amazon Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker.  Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_Sagemaker.ipynb)

#### Parkinson's Disease Prediction using Signal Processing
Detect Parkinson's Disease at an early stage by using Vantage InDB functions for model training and scoring to compare the performance of two models against biomedical voice measurements.<br>
[Python Version](./UseCases/Parkinsons_Disease_Prediction/Parkinsons_Disease_Prediction_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xModelOps'></a>
### ModelOps

#### ModelOps Introduction & List of Notebooks
This introduction and table of contents introduces you to ModelOps and provides a launch for ModelOps. It is **recommended** to go through ModelOps demonstrations in sequence.<br>
[Information](./ModelOps/00_ModelOps_Introduction.ipynb)

#### ModelOps BYOM with Dataiku
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a Dataiku model.<br>
[Python Version](./ModelOps/17_ModelOps_BYOM_PIMA_DATAIKU.ipynb)

#### ModelOps BYOM with Datarobot
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a DataRobot model.<br>
[Python Version](./ModelOps/18_ModelOps_BYOM_PIMA_DataRobot.ipynb)

#### ModelOps Notebook Scheduling using BYOM
Users can deploy and schedule notebook jobs, with execution logs available in both HTML and notebook formats.<br>
[Python Version](./ModelOps/16_ModelOps_Notebook_Scheduling.ipynb)

#### ModelOps
Implement Model Factory Solution Accelerator using Python commands with the Restful API layer of ClearScape Analytics ModelOps.<br>
[Python Version](./ModelOps/12_ModelOps_Model_Factory_REST_Python.ipynb)

#### ModelOps Feature Engineering
Preprocess and transform data within the ModelOps pipeline<br>
[Python Version](./ModelOps/15_ModelOps_Feature_Engineering.ipynb)

#### PIMA Predicitons with teradataml OpenSourceML LightFBM using GIT
Use the Teradata OpenSourceML LightGBM model to operationalize the PIMA diabetes use case with Python and ModelOps<br>
[Python Version](./ModelOps/14_ModelOps_GIT_PIMA_Python_osml_LightGBM.ipynb)

#### Financial Fraud Detection using a Traditional Approach
Step through a traditional approach of building models to identify and identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_Traditional_Approach.ipynb)

#### In-Database XGBoost using ModelOps and Git for Financial Fraud Detection
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/FinFraud_EndtoEnd_ModelOps_GIT_Python_indb_XGB.ipynb)

#### Telco_EndtoEnd_ModelOps_GIT_Python_indb_DF.ipynb
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_Traditional_Approach.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xNatural-Language-Processing'></a>
### Natural Language Processing

#### Natural Language Processing
Use NLP for Sentiment Analysis, perform Kmeans clustering, execute Principal Component Analysis (PCA) using comments received by a Retail Store<br>
[Python-SQL Version](./UseCases/Natural_Language_Processing/Natural_Language_Processing_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xObject-Storage'></a>
### Object Storage

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_Python.ipynb)

#### Deep History via Object Store
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.<br>
[SQL Version](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)

#### Sensor Data Analytics
Creative application of geospatial to locations of sensors in  a research lab and integration of data from tables with detailed recordings on cloud storage.<br>
[Python-SQL Version](./UseCases/Sensor_Data_Analytics/Sensor_Data_Analytics_PY_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-Source'></a>
### Open Source

#### Parkinson's Disease Prediction using Signal Processing
Detect Parkinson's Disease at an early stage by using Vantage InDB functions for model training and scoring to compare the performance of two models against biomedical voice measurements.<br>
[Python Version](./UseCases/Parkinsons_Disease_Prediction/Parkinsons_Disease_Prediction_Python.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Semantic Similarity using OpenSource Language Models
Run Hugging Face Embedding Model in ONNX format to create some embeddings from a Consumer Complaints dataset<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Similarity_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### Vehicle Routing for Delivery
Demonstrates advanced analytics to find lowest cost routes to deliver a large volume of packages by a fleet of vehicles.<br>
[Python-SQL Version](./UseCases/Vehicle_Routing_Delivery/Vehicle_Routing_Delivery_STO_PY_SQL.ipynb)

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Banking Customer Churn
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.<br>
[Python Version](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Broken Digital Journey
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.<br>
[Python Version](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Broken%20Digital%20Journeys%20CX%20Solution%20Accelerator%20Demo%20via%20Python%20Video%20-%20External%20-%20SP004183%20(1).MP4)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

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

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Financial Customer Journey
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness<br>
[Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Knee Replacement Attribution
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.<br>
[SQL Version](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)

#### Knee Replacement nPath
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.<br>
[Python Version](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### teradataml Python Basics
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.<br>
[Python Version](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPath-Analytics'></a>
### Path Analytics

#### Interactive Npath Widget
Generate Sankey and Icicle charts from event logs.<br>
[Python Version](./Recipes/NPath_Visualizer_Widget/NPath_Visualizer_Widget.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpen-and-connected-analytics'></a>
### Open-and-connected analytics

#### Anomaly Detection in Spot Welding Process - Trusted AI
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python Version](./UseCases/Anomaly_Detection/Anomaly_Detection_Python_TrustedAI.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPCA-(Principal-Component-Analysis)'></a>
### PCA (Principal Component Analysis)

#### Customer Segmentation with K-means
Use K-means clustering to segment customers by purchase volume and value using R and tdplyr<br>
[R Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_R.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPolarity-Classification'></a>
### Polarity Classification

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xPrediction-Analysis'></a>
### Prediction Analysis

#### Cancer Prediction using the TDAPIClient and VertexAI
Use TDAPIClient to connect to the Google Cloud Vertex API Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker. Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_VertexAI_CustomModel.ipynb)

#### Customer Segmentation with K-means
Use K-means clustering to segment customers by purchase volume and value using R and tdplyr<br>
[R Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_R.ipynb)

#### Cancer Prediction using Teradata and the SageMaker API
Use the Vantage SageMaker API feature to connect to an Amazon Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker.  Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_Sagemaker.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xSentiment-Analysis'></a>
### Sentiment Analysis

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xSignal-Processing'></a>
### Signal Processing

#### Parkinson's Disease Prediction using Signal Processing
Detect Parkinson's Disease at an early stage by using Vantage InDB functions for model training and scoring to compare the performance of two models against biomedical voice measurements.<br>
[Python Version](./UseCases/Parkinsons_Disease_Prediction/Parkinsons_Disease_Prediction_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xteradataml-OpenSourceML'></a>
### teradataml OpenSourceML

#### Advertising Sales Prediction using teradataml OpenSourceML in Vantage
Predict sales for multiple channels using Open-Source Machine Learning Functions<br>
[Python Version](./UseCases/Advertising_Sales_Prediction_OpenSourceML/Advertising_Sales_Prediction_Using_OpensourceML.ipynb)

#### PIMA Predicitons with teradataml OpenSourceML LightFBM using GIT
Use the Teradata OpenSourceML LightGBM model to operationalize the PIMA diabetes use case with Python and ModelOps<br>
[Python Version](./ModelOps/14_ModelOps_GIT_PIMA_Python_osml_LightGBM.ipynb)

#### Predicting Medical Expenses in Healthcare
Use a dataset containing variables like age, sex, BMI, smoking status, number of children, and region to build machine learning models that accurately predict healthcare costs for insurance policyholders, taking into account factors that affect medical expenses.<br>
[Python Version](./UseCases/Health_Insurance/Health_Insurance_Costs_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xText-Analysis'></a>
### Text Analysis

#### Customer 360
This integrates data about customers from multiple sources using multiple matching techniquest to create the "Golden Customer Record" and calculate LTV.<br>
[SQL Version](./UseCases/Customer360/CustomerIdentityMatching_SQL.ipynb)

#### Text Term Frequency
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.<br>
[Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)

#### VAL Descriptive Statistics
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)

#### Natural Language Processing
Use NLP for Sentiment Analysis, perform Kmeans clustering, execute Principal Component Analysis (PCA) using comments received by a Retail Store<br>
[Python-SQL Version](./UseCases/Natural_Language_Processing/Natural_Language_Processing_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTime-series-analytics'></a>
### Time series analytics

#### Supply Chain Visibility
Shows the integration of data from warehouse, trucking company, and customer Order Management Systems (OMS) using temporal  to reconcile different update frequencies and show rerouting when warehouse is unavailable.<br>
[Python Version](./UseCases/Supply_Chain_Visibility/Supply_Chain_Visibility_Python.ipynb)

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)

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

#### Enhance Product Hierarchies with In-DB K-means Clustering
Enhance a product hierarchy by leveraging time series analysis and clustering techniques<br>
[Python Version](./UseCases/Retail_Product_Hierarchy/Retail_Product_Hierarchy_Clustering_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTopic-Modelling'></a>
### Topic Modelling

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xUnbounded-Array-Framework'></a>
### Unbounded Array Framework

#### Signal Processing and Classification
Use the Unbounded Array Framework in ClearScape Analytics to classify sonar signals. Extract and engineer features to use in training and scoring our models.<br>
[Python Version](./UseCases/Signal_Processing_and_Classification/Signal_Processing_and_Classification_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## 3rd Party Tools

<a id='xAWS-SageMaker'></a>
### AWS SageMaker

#### Cancer Prediction using Teradata and the SageMaker API
Use the Vantage SageMaker API feature to connect to an Amazon Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker.  Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_Sagemaker.ipynb)

#### Generate Teradata SQL with GenAI and AWS Bedrock
In this demo, we use AWS Bedrock's LLMs and LangChain to create a text-to-Teradata SQL agent.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI_Bedrock/AWS_Bedrock_LangChain_Text_to_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
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
<a id='xH2O.ai'></a>
### H2O.ai

#### ModelOps Introduction & List of Notebooks
This introduction and table of contents introduces you to ModelOps and provides a launch for ModelOps. It is **recommended** to go through ModelOps demonstrations in sequence.<br>
[Information](./ModelOps/00_ModelOps_Introduction.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xSAS'></a>
### SAS

#### Sales Forecasting with Vantage vs SAS
This demo walks through how a typical SAS user would use sales data to build a simple sales forecasting model and then will showcase how we can achieve the same using Vantage ClearScape Analytics.<br>
[Python-SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xVertex-AI'></a>
### Vertex AI

#### Cancer Prediction using the TDAPIClient and VertexAI
Use TDAPIClient to connect to the Google Cloud Vertex API Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker. Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_VertexAI_CustomModel.ipynb)

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xAWS-Bedrock'></a>
### AWS Bedrock

#### Complaints Classification with AWS Bedrock
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Classification.ipynb)

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Complaints Summarization with AWS Bedrock
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Summarization.ipynb)

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Product Recommendation via AWS Bedrock
Use AWS Bedrock, Embedding from HuggingFace and Vantage in-DB functions to assist in providing product recommendations to develop a recipe assistant chatbot.<br>
[Python Version](./UseCases/Chat_Powered_Product_Recommendation/Chat_powered_product_recommendation_based_on_search_output.ipynb)

#### Speech Recognition and Sentiment Analysis with AWS Bedrock
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Speech_Recognition.ipynb)

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

#### Customer Reviews Analysis using GenAI
Customer reviews analysis is a crucial aspect of understanding customer sentiment and preferences. By leveraging the power of OpenAIEmbeddings and Vantage InDB Analytic Function, we can gain valuable insights from customer reviews.<br>
[Python Version](./UseCases/Customer_reviews_analysis_using_GenAI/Customer_reviews_analysis_using_GenAI_Python.ipynb)

#### Generate Teradata SQL with GenAI and AWS Bedrock
In this demo, we use AWS Bedrock's LLMs and LangChain to create a text-to-Teradata SQL agent.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI_Bedrock/AWS_Bedrock_LangChain_Text_to_SQL.ipynb)

#### Simplify Text Analytics with Teradata Python for Generative AI
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Text_Analytics_teradatagenai_AWS/text_analytics_teradatagenai_aws_huggingface.ipynb)

#### Unstructured Text Analysis With BYO-LLM and NVIDIA GPU Acceleration
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Entity_Recognition_BYOLLM/Entity_Recogntion_BYOLLM_VCL.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xOpenAI'></a>
### OpenAI

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

#### Using ClearScape Analytics with openAI
To ensure optimal utilization of the OpenAI API in generative AI notebooks, it is essential to establish the API keys correctly. This concise guide outlines the process of configuring OpenAI API keys for seamless integration across multiple notebooks.<br>
[Information](./UseCases/Openai_setup_api_key/Openai_setup_api_key.md)

#### Getting Started with Azure OpenAI
Follow these instructions to setup the Azure OpenAI endpoint and generate the access Keys required to run the model.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Azure-OpenAI.ipynb)

#### Mental Health Chat with Fine-tuned OpenAI Model
Train a GPT-3.5 Turbo model using the OpenAI API endpoint.  Ask mental health questions using a chat input box.<br>
[Python Version](./UseCases/Fine_Tuning_OpenAI_Model/Fine_Tuning_OpenAI_Model_Python.ipynb)

#### Mortgage Calculator Chatbot using GenAI: Finetune LLM
Fine-tuned an OpenAI model using RAG, LangChain and LLM models framework.  Query a chatbot for answers about a mortgage and available housing within a predefiend area.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_Finetune_LLM.ipynb)

#### Mortgage Calculator chatbot using GenAI: RAG
Build a conversational chatbot and ask questions about a mortgage and available housing within a predefined area using LangChain.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Create a Workshop version of a Notebook
Use OpenAI to convert code cells into interactive exercises with solutions that can be collapsed or expanded.<br>
[Python Version](./Recipes/Creating_Workshop_Notebooks/Creating_Workshop_Notebooks.ipynb)

#### Resume Classification Model Training using Vantage In-DB Functions
Use data from a collection of Resume Examples taken from kaggle for categorizing a given resume into any of the labels defined in the dataset. Summarize and ask questions using a ChatBot.<br>
[Python Version](./Resume_Analyzer/Introduction.ipynb)

#### Search all notebooks with a ChatBot
Run this notebook to search all notebooks with a ChatBot.<br>
[Python Version](./ExperienceBot/ExperienceBot_NoCode.ipynb)

#### Search all notebooks with a ChatBot using Vantage
Run this notebook to search all notebooks with a ChatBot and Database connectivity.<br>
[Python Version](./ExperienceBot/ExperienceBot.ipynb)

#### Augmented Call Center: Revolutionizing Customer Support with Advanced AI Technologies
Experience the next generation of customer support with our Augmented Call Center. Harness the power of advanced AI technologies to deliver exceptional service, drive customer loyalty, and achieve operational excellence.<br>
[Python Version](./UseCases/Augmented_call_center_AgenticAI/Augmented_call_center_AgenticAI.ipynb)

#### Mortgage Calculator Chatbot using Trusted AI(RAG)
Experience the integration of LLM models to provide user-friendly responses to queries.  RAG combines retrieval and generative approaches.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Customer Reviews Analysis using GenAI
Customer reviews analysis is a crucial aspect of understanding customer sentiment and preferences. By leveraging the power of OpenAIEmbeddings and Vantage InDB Analytic Function, we can gain valuable insights from customer reviews.<br>
[Python Version](./UseCases/Customer_reviews_analysis_using_GenAI/Customer_reviews_analysis_using_GenAI_Python.ipynb)

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGoogle-Gemini'></a>
### Google Gemini

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with Google Gemini
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Speech_Recognition.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Data Analyst AI Agent with LangChain and Google Gemini
Create a text-to-SQL autonomous agent that will enable the retrieval of answers and insights from a database.<br>
[Python Version](./UseCases/Data_Analyst_AI_Agent_Gemini/Data_Analyst_AI_Agent_Gemini.ipynb)

#### Video Analyzer with Google Gemini
Observe how Gemini 2.0 can be leveraged to generate details about events happening in videos and return those details as readable text.<br>
[Python Version](./Recipes/Video_Processing_using_Gemini/Video_processing_Gemini.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xHugging-Face'></a>
### Hugging Face

#### Initiate Parallel CPU Inferencing of Hugging Face Models in Vantage
Execute this notebook first to prepare the environment to demonstrate Parallel CPU Inferencing of Hugging Face Models in Vantage<br>
[Python Version](./UseCases/Language_Models_InVantage/Initialization_and_Model_Load.ipynb)

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Semantic Similarity using OpenSource Language Models
Run Hugging Face Embedding Model in ONNX format to create some embeddings from a Consumer Complaints dataset<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Similarity_Python.ipynb)

#### Hugging Face Model using Script Table Operator
Execute a Huggingface model using the Vantage Script Table operator(STO) on Vantage Enterprise.<br>
[Python Version](./Recipes/Huggingface_model_STO_Python/Huggingface_model_STO_Python.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDataRobot'></a>
### DataRobot

#### DataRobotPredict Function in Vantage
Use this function to load a pre-built DataRobot Model into Vantage and then use it to score a dataset in the database.<br>
[Python Version](./Recipes/ClearScape_Functions/DataRobotPredict.ipynb)

#### ModelOps BYOM with Datarobot
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a DataRobot model.<br>
[Python Version](./ModelOps/18_ModelOps_BYOM_PIMA_DataRobot.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xLangSmith'></a>
### LangSmith

#### Data Analyst AI Agent with LangChain and Google Gemini
Create a text-to-SQL autonomous agent that will enable the retrieval of answers and insights from a database.<br>
[Python Version](./UseCases/Data_Analyst_AI_Agent_Gemini/Data_Analyst_AI_Agent_Gemini.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xLangChain'></a>
### LangChain

#### Augmented Call Center: Revolutionizing Customer Support with Advanced AI Technologies
Experience the next generation of customer support with our Augmented Call Center. Harness the power of advanced AI technologies to deliver exceptional service, drive customer loyalty, and achieve operational excellence.<br>
[Python Version](./UseCases/Augmented_call_center_AgenticAI/Augmented_call_center_AgenticAI.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Language

<a id='xPython'></a>
### Python

#### Anomaly Detection of Outstanding Amounts
Anomaly detection in bank accounts can help in identifying unusual patterns, potentially flagging issues like errors or fraudulent activities.  Enterprise re-use of Features ensures rapid creation & deployment of models while new Features can be created and used without extensive engineering support.<br>
[Python Version](./UseCases/AnomalyDetection_OutstandingAmount_FS/AnomalyDetection_OutstandingAmount_FeatureStore.ipynb)

#### Charting and Visualizations using teradataml
The td_plot method streamlines large-scale visualizations by providing users with efficient tools to create visualizations directly within the Vantage platform<br>
[Python Version](./Getting_Started/Charting_and_Visualization/InDB_Visualizations_using_teradataml.ipynb)

#### Chatbot using GenAI with insurance PDF document
Uses TD_VectorDistance in Vantage to create a chatbot using Retrieval-Augmented Generation (RAG),  Langchain, and LLM to answer questions using a 24 page travelers insurance policy PDF as source data to answer questions about coverage.<br>
[Python Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_OpenSource_GenAI_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_VantageDB_GenAI_Python.ipynb)

#### Credit Card Data Preparation
Uses functions from TeradataML Python library to prepare data for analysis using data cleansing, exploration and feature engineering functions.<br>
[Python Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_Python.ipynb)

#### ModelOps Introduction & List of Notebooks
This introduction and table of contents introduces you to ModelOps and provides a launch for ModelOps. It is **recommended** to go through ModelOps demonstrations in sequence.<br>
[Information](./ModelOps/00_ModelOps_Introduction.ipynb)

#### Mortgage Calculator using GenAI
Use Retrieval-Augmented Generation (RAG), Lanchain and LLM models to as questions about loans and retrieve relevant data from Vantage.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python.ipynb)

#### Product Recommentations via TDApiClient
Build a product recommendation system using OpenAI embeddings and Vantage in db_function VectorDistance. We will also use Vantage as VectorDB, to store the embeddings.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_using_TDAPIClient_Python.ipynb)

#### Sales Forecasting with Vantage vs SAS
This demo walks through how a typical SAS user would use sales data to build a simple sales forecasting model and then will showcase how we can achieve the same using Vantage ClearScape Analytics.<br>
[Python-SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_SQL.ipynb)

#### Shipping Time Prediction
Use ClearScape Analytics to develop a robust system that can reliably estimate delivery dates, accounting for handling time, transit time, and other relevant variables affecting the actual delivery timeframe.<br>
[Python-SQL Version](./UseCases/Shipping_Time_Prediction/Shipping_Time_Prediction_PY_SQL.ipynb)

#### Supply Chain Visibility
Shows the integration of data from warehouse, trucking company, and customer Order Management Systems (OMS) using temporal  to reconcile different update frequencies and show rerouting when warehouse is unavailable.<br>
[Python Version](./UseCases/Supply_Chain_Visibility/Supply_Chain_Visibility_Python.ipynb)

#### Vehicle Routing for Delivery
Demonstrates advanced analytics to find lowest cost routes to deliver a large volume of packages by a fleet of vehicles.<br>
[Python-SQL Version](./UseCases/Vehicle_Routing_Delivery/Vehicle_Routing_Delivery_STO_PY_SQL.ipynb)

#### Grocery Recommendations using GenAI
Use context-based product recommendations powered by GenAI Large Language Models to enhance a shopping experience.<br>
[Python-SQL Version](./UseCases/Grocery_Recommendation/Grocery_Recommendation_PY_SQL.ipynb)

#### Hyperparameter Tuning using the Titanic Passenger Dataset
Create a predictive algorithm that can identify whethr or not passengers on the Titanic survived the ship's sinking.<br>
[Python Version](./UseCases/TitanicSurvival_HyperParameter/Predict_TitanicSurvival_Hyperparameter_Tuning_Python.ipynb)

#### Signal Processing and Classification
Use the Unbounded Array Framework in ClearScape Analytics to classify sonar signals. Extract and engineer features to use in training and scoring our models.<br>
[Python Version](./UseCases/Signal_Processing_and_Classification/Signal_Processing_and_Classification_Python.ipynb)

#### Create a Workshop version of a Notebook
Use OpenAI to convert code cells into interactive exercises with solutions that can be collapsed or expanded.<br>
[Python Version](./Recipes/Creating_Workshop_Notebooks/Creating_Workshop_Notebooks.ipynb)

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

#### Getting Started with Azure OpenAI
Follow these instructions to setup the Azure OpenAI endpoint and generate the access Keys required to run the model.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Azure-OpenAI.ipynb)

#### Hugging Face Model using Script Table Operator
Execute a Huggingface model using the Vantage Script Table operator(STO) on Vantage Enterprise.<br>
[Python Version](./Recipes/Huggingface_model_STO_Python/Huggingface_model_STO_Python.ipynb)

#### Natural Language Processing
Use NLP for Sentiment Analysis, perform Kmeans clustering, execute Principal Component Analysis (PCA) using comments received by a Retail Store<br>
[Python-SQL Version](./UseCases/Natural_Language_Processing/Natural_Language_Processing_Python.ipynb)

#### Speech Recognition and Sentiment Analysis with AWS Bedrock
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Speech_Recognition.ipynb)

#### Tutorial on using Teradataml Widgets
Use Teradataml Widgets to display interactive prompting to generate datasets from the Vantage database.<br>
[Python Version](./Getting_Started/Teradataml_Widgets/Tutorial.ipynb)

#### ACF and PACF Functions in Vantage
Convert time series data and then normalize it. Then calculate the partial autocorrelation coefficients using the LEVINSON_DURBIN algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/ACF_PACF.ipynb)

#### Advertising Sales Prediction using teradataml OpenSourceML in Vantage
Predict sales for multiple channels using Open-Source Machine Learning Functions<br>
[Python Version](./UseCases/Advertising_Sales_Prediction_OpenSourceML/Advertising_Sales_Prediction_Using_OpensourceML.ipynb)

#### Analysis of NBA BasketBall Data
Use Language Modeling to return answers to common NBA Statistics questions for a single game or questions about players over several years.<br>
[Python Version](./UseCases/BasketBall_Analysis/NBA_Data_Analysis_Python.ipynb)

#### Antiselect function in Vantage
Return all columns except those specified in an exclude parameter.<br>
[Python Version](./Recipes/ClearScape_Functions/Antiselect.ipynb)

#### Arima Functions in Vantage
Execute the Arima Functions: ArimaEstimate, ArimaValidate, and ArimaForecast and use teradataml to create graphs with results.<br>
[Python Version](./Recipes/ClearScape_Functions/Arima.ipynb)

#### Attribution Function in Vantage
Use the Attribution function to assign scores to events that will then  be inserted in an Attribution Model.<br>
[Python Version](./Recipes/ClearScape_Functions/Attribution.ipynb)

#### Augmented Call Center: Revolutionizing Customer Support with Advanced AI Technologies
Experience the next generation of customer support with our Augmented Call Center. Harness the power of advanced AI technologies to deliver exceptional service, drive customer loyalty, and achieve operational excellence.<br>
[Python Version](./UseCases/Augmented_call_center_AgenticAI/Augmented_call_center_AgenticAI.ipynb)

#### Banking Customer Churn Analysis using AutoML with a JSON Parameter File
Use Automated Machine Learning to automate the entire process of developing a predictive model by saving parameters into a JSON file and then execute the model to create a Prediction and a ROC curve. <br>
[Python Version](./UseCases/Banking_Churn_AutoML_JSON/Banking_Churn_AutoML_JSON.ipynb)

#### BinaryMatrixOP Function in Vantage
use the BinaryMatrixOp to perform multiplication operation in MATCH mode between two matrices holding REAL payload.<br>
[Python Version](./Recipes/ClearScape_Functions/BinaryMatrixOp.ipynb)

#### BinarySeriesOp Function in Vantage
Use BinarySeriesOp to convolve two series with digital signal processing.<br>
[Python Version](./Recipes/ClearScape_Functions/BinarySeriesOp.ipynb)

#### BincodeFit and BincodeTransform functions in Vantage
Transform continuous data into bins.  Then apply the transformation to a DataFrame.<br>
[Python Version](./Recipes/ClearScape_Functions/BincodeFitandTransform.ipynb)

#### BreuschGodfrey Function in Vantage
Check for the presence of serial correlation among the residual and error terms after running a regression associated with a fitted model.<br>
[Python Version](./Recipes/ClearScape_Functions/BreuschGodfrey.ipynb)

#### BreuschPaganGodfrey Function in Vantage
Detect the presence of variability of the error term during regression analysis. Observe the difference between observed values and predicted values, is not constant across all levels of the independent variables.<br>
[Python Version](./Recipes/ClearScape_Functions/BreuschPaganGodfrey.ipynb)

#### ClassificationEvaluator Function in Vantage
Compute evaluation metrics to compare multiple classification models and summarize how close predictions are to their expected values.<br>
[Python Version](./Recipes/ClearScape_Functions/ClassificationEvaluator.ipynb)

#### ColumnTransformer Function in Vantage
Transform input data columns in a single operation by providing only the FIT dataframes generated by the analytic functions and then runs all the transformations in a single operation.<br>
[Python Version](./Recipes/ClearScape_Functions/ColumnTransformer.ipynb)

#### Convert PySpark to teradatamlspk
Convert a PySpark script to teradatamlspk syntax and generate a HTML report using Housing Prices to generate price predictions.<br>
[Python Version](./Getting_Started/PySpark_to_Teradataml/HousingPrices_pyspark_to_tdml.ipynb)

#### ConvertTo Function in Vantage
Convert data types in columns of a source table into other data types without using complicated format strings.<br>
[Python Version](./Recipes/ClearScape_Functions/ConvertTo.ipynb)

#### Convolve Function in Vantage
Use this function to convolve two series into new time series using the CONV_DFFT algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve.ipynb)

#### Convolve2 Function in Vantage
Convolve 2 matching payload fields of 2 matrices into a new source matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve2.ipynb)

#### CumulPeriodogram Function in Vantage
Use a cumulative periodogram statistics test to determine if any periodicities (seasonal cycles) exist in the residual series being tested.<br>
[Python Version](./Recipes/ClearScape_Functions/CumulPeriodogram.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Customer Retail Journeys
Use Clearscape Analytics functions to analyze customer digital behaviors and experiences in an effort to diagnose issues and events that could possibly inhibit their purchases.<br>
[Python Version](./UseCases/Retail_Journey/Customer_Retail_Journey.ipynb)

#### Customer Segmentation with K-means Clustering and Data Preparation Pipelines
Leverage native Vantage processing for efficient and highly scalable data preparation, model training, and evaluation workflows.<br>
[Python Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_Python.ipynb)

#### Data Analyst AI Agent with LangChain and Google Gemini
Create a text-to-SQL autonomous agent that will enable the retrieval of answers and insights from a database.<br>
[Python Version](./UseCases/Data_Analyst_AI_Agent_Gemini/Data_Analyst_AI_Agent_Gemini.ipynb)

#### DataRobotPredict Function in Vantage
Use this function to load a pre-built DataRobot Model into Vantage and then use it to score a dataset in the database.<br>
[Python Version](./Recipes/ClearScape_Functions/DataRobotPredict.ipynb)

#### DecisionForest and TDDecisionForestPredict Functions in Vantage
Create predictive models based on the algorithm for decision tree training and prediction.  Then use those models to analyze the input data and make predictions.<br>
[Python Version](./Recipes/ClearScape_Functions/DecisionForestandTDDecisionForestPredict.ipynb)

#### Deploy a Hyper-Segmented Model Scikit Learn Pipeline
Deploy a hyper-segmented model created using the Python Scikit-Learn module and then load and run it in Vantage.<br>
[Python Version](./Recipes/HyperSegmented_Model_Pipelines/Deploy_HyperSegmented_Model_Pipeline.ipynb)

#### DFFT and IDFFT Functions in Vantage
This is an example of how to use DFFT() when convolving two series with digital signal processing.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT_IDFFT.ipynb)

#### DFFT2 and IDFFT2 Functions in Vantage
Compute the two-dimension fourier transform using the input matrix with real numbers only for a matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT2_IDFFT2.ipynb)

#### DFFT2Conv Function in Vantage
Load time series data and then convert it into a TDMatrix.  Then compute the two-dimension fourier transform with only real numbers. Then convert the output to polar data in Radian format.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT2Conv.ipynb)

#### DFFTConv Function in Vantage
Load time series data and then convert it into a TDSeries.  Then compute the Fourier Transform Coefficients and convert to polar data in Radian format.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFTConv.ipynb)

#### DickeyFuller Function in Vantage
Test data in a Time Series to determine if it is stationary or non-stationary.<br>
[Python Version](./Recipes/ClearScape_Functions/DickeyFuller.ipynb)

#### DTW Function in Vantage
Measure the similarity between two time series.<br>
[Python Version](./Recipes/ClearScape_Functions/DTW.ipynb)

#### DurbinWatson Function in Vantage
Determine if there is evidence of serial correlation between residuals in a residual series.<br>
[Python Version](./Recipes/ClearScape_Functions/DurbinWatson.ipynb)

#### Extract Results Function in Vantage
Retrieve the values stored in the Adaptive Radix Tree (ART) that's created by the execution of other analytic functions.<br>
[Python Version](./Recipes/ClearScape_Functions/ExtractResults.ipynb)

#### FillrowId Function in Vantage
Add a column of unique row identifiers to a table.<br>
[Python Version](./Recipes/ClearScape_Functions/FillRowId.ipynb)

#### Financial Fraud Detection using a Traditional Approach
Step through a traditional approach of building models to identify and identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_Traditional_Approach.ipynb)

#### Financial Fraud Detection using AutoML
Step through an automated approach of building models to identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_AutoML_Approach.ipynb)

#### Fit and Transform functions in Vantage
Determine if a specific numeric transformation can be applied to target columns and make the output available to the Transform() function.<br>
[Python Version](./Recipes/ClearScape_Functions/FitandTransform.ipynb)

#### FitMetrics Function in Vantage
Generate googness-of-fit metrics from multivariate series.<br>
[Python Version](./Recipes/ClearScape_Functions/FitMetrics.ipynb)

#### Generate Teradata SQL with GenAI and AWS Bedrock
In this demo, we use AWS Bedrock's LLMs and LangChain to create a text-to-Teradata SQL agent.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI_Bedrock/AWS_Bedrock_LangChain_Text_to_SQL.ipynb)

#### GenseriesFormula Function in Vantage
Define and apply a formula to generate a time series.<br>
[Python Version](./Recipes/ClearScape_Functions/GenseriesFormula.ipynb)

#### GenseriesSinusoids Function in Vantage
Generate a time series containing a subset of the sinusoidal's element's periodicities, whose payload content value is of type REAL.<br>
[Python Version](./Recipes/ClearScape_Functions/GenseriesSinusoids.ipynb)

#### GLM and TDGLMPredict Functions in Vantage
Use a generalized linear model to perform regression and classification analysis on a data set.  Then predict the target values and class labels from that data set.<br>
[Python Version](./Recipes/ClearScape_Functions/GLMandTDGLMPredict.ipynb)

#### GLMPerSegment and GLMPredictPerSegment Functions in Vantage
Create models by partitioning datasets on a key value.  Then use those models to predict future values (regressions) and class labels (classifications).<br>
[Python Version](./Recipes/ClearScape_Functions/GLMPerSegmentandGLMPredictPerSegment.ipynb)

#### Hashing Your Data
Work through 4 use cases that demonstrate the usage of the Teradata hash function.<br>
[Python Version](./Recipes/Hashing/Hashing.ipynb)

#### Histogram function in Vantage
Calculate the frequency distribution of a data set using multiple methods: Sturges, Scot, Variable-width, Equal-width<br>
[Python Version](./Recipes/ClearScape_Functions/Histogram.ipynb)

#### HoldWintersForecaster Function in Vantage
Apply exponential smoothing on a combination of level, trend and seasonality components to make predictions.<br>
[Python Version](./Recipes/ClearScape_Functions/HoltWintersForecaster.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

#### Image2Matrix and Matrix2Image Functions in Vantage
Convert JPEG or PNG images to matrices, manipulate any element, then convert the matrices back into images.<br>
[Python Version](./Recipes/ClearScape_Functions/Image2matrixandMatrix2Image.ipynb)

#### In-Database XGBoost using ModelOps and Git for Financial Fraud Detection
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/FinFraud_EndtoEnd_ModelOps_GIT_Python_indb_XGB.ipynb)

#### InputValidator Function in Vantage
Validate data and identify series and matrices that have indiscrete data.<br>
[Python Version](./Recipes/ClearScape_Functions/InputValidator.ipynb)

#### Introduction to Plot types using Teradataml Widgets.
This is an introduction to using the various Plot types available as widgets: Line, Bar, Mesh, Wiggle, Geometry, etc.<br>
[Python Version](./Getting_Started/Teradataml_Widgets/Plot_Notebook.ipynb)

#### Kmeans and KMeansPredict Functions in Vantage
Group a set of observations into k clusters in which each observation belongs to the cluster with the nearest mean.  Then predict a target class.<br>
[Python Version](./Recipes/ClearScape_Functions/KMeans_KMeansPredict.ipynb)

#### LineSpec Function in Vantage
Use this function to identify cycles that may be inherent in an input series.<br>
[Python Version](./Recipes/ClearScape_Functions/LineSpec.ipynb)

#### MAMean Function in Vantage
Use historical data to forecast activity 1 period ahead (t+1).<br>
[Python Version](./Recipes/ClearScape_Functions/MAMean.ipynb)

#### MatricMultiply Function in Vantage
Create a data series based on two matrixes.<br>
[Python Version](./Recipes/ClearScape_Functions/MatrixMultiply.ipynb)

#### Minfo Function in Vantage
Return a one row summary describing the data in a matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/MInfo.ipynb)

#### ModelOps BYOM with Dataiku
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a Dataiku model.<br>
[Python Version](./ModelOps/17_ModelOps_BYOM_PIMA_DATAIKU.ipynb)

#### ModelOps BYOM with Datarobot
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a DataRobot model.<br>
[Python Version](./ModelOps/18_ModelOps_BYOM_PIMA_DataRobot.ipynb)

#### MovingAverage Function in Vantage
Calculate the Cumulative Average of the quantities per Invoice in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/MovingAverage.ipynb)

#### NaiveBayesTextClassifierTrainer and NaiveBayesTextClassifierPredict Functions in Vantage
Calculate conditional probabilities.  Train a model with those values and use the predict function to classify documents into categories.<br>
[Python Version](./Recipes/ClearScape_Functions/NaiveBayesTextClassifierTrainerandPredict.ipynb)

#### NGramSplitter Function in Vantage
Tokenize an input stream of text and outputs n multigrams (called n-grams) based on the specified delimiter and reset parameters.<br>
[Python Version](./Recipes/ClearScape_Functions/NGramSplitter.ipynb)

#### NonLinearCombineFit and NonLinearCombineTransform Function in Vantage
Use the NonLinearCombineFit and NonLinearCombineTransform functions available in Vantage to create new feature columns in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/NonLinearCombineFitandTransform.ipynb)

#### NPath Function in Vantage
Discover paths leading to Accounts being closed for 'Gold' customers.<br>
[Python Version](./Recipes/ClearScape_Functions/NPath.ipynb)

#### NumApply Function in Vantage
Apply a user-defined, numberic operator to a specific column or set of columns in a database table.<br>
[Python Version](./Recipes/ClearScape_Functions/NumApply.ipynb)

#### OneClassSVM and OneClassSVMPredict functions in Vantage
See how to use the OneClassSVM and OneClassSVMPredict functions .<br>
[Python Version](./Recipes/ClearScape_Functions/OneClassSVMandOneClassSVMPredict.ipynb)

#### OneHotEncodingFit and OneHotEncodingTransform in Vantage
Use these functions to analyze whether gender influences customer churn.<br>
[Python Version](./Recipes/ClearScape_Functions/OneHotEncodingFitandTransform.ipynb)

#### OrdinalEncodingFit and OrdinalEncodingTransform in Vantage
Analyze banking data to see if customer geography is influencing churn.<br>
[Python Version](./Recipes/ClearScape_Functions/OrdinalEncodingFitandTransform.ipynb)

#### OutlierFilterFit and OutlierFilterTransform
Use outlier filtering to identify and remove outliers from a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/OutlierFilterFitandTransform.ipynb)

#### Pack and Unpack Functions in Vantage
Store virtual columns from a dataframe in one physical column and then extract them back into multiple dataframe columns.<br>
[Python Version](./Recipes/ClearScape_Functions/Pack_Unpack.ipynb)

#### PolynomialFeaturesFit and PolynomialFeaturesTransform Functions in Vantage
Use these functions to find non-linear relationships between different customer attributes.<br>
[Python Version](./Recipes/ClearScape_Functions/PolynomialFeaturesFitandTransform.ipynb)

#### Portman Function in Vantage
Use the Portmanteau test to execute a series of test to determine whether the residuals can be classified as zeo mean, no serial correlation, or homoscedastic variance (white noise).<br>
[Python Version](./Recipes/ClearScape_Functions/Portman.ipynb)

#### PowerSpec Function in Vantage
Converts a time series to a frequency domain to facilitate frequency domain analysis.<br>
[Python Version](./Recipes/ClearScape_Functions/KNN.ipynb)

#### PowerTransform Function in Vantage
get forecast values for a heteroscedastic time series using PowerTransform function.<br>
[Python Version](./Recipes/ClearScape_Functions/PowerTransform.ipynb)

#### QQNorm function in Vantage
Determine if values in a data column follow normal distribution or not.<br>
[Python Version](./Recipes/ClearScape_Functions/QQNorm.ipynb)

#### RandomProjectionMinComponents, RandomProjectionFit and RandomProjectionTransform Functions
Use these functions to perform dimensionality reduction of a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/RandomProjectionFitandTransform_Python.ipynb)

#### RegressionEvaluator Function in Vantage
Compute metrics to evaluate and compare multiple models and summarizes how close predictions are to their expected values.<br>
[Python Version](./Recipes/ClearScape_Functions/RegressionEvaluator.ipynb)

#### ROC Function in Vantage
Give the function a set of prediction-actual pairs for a binary classification model, and it will calculate values for a range of discrimination thresholds.<br>
[Python Version](./Recipes/ClearScape_Functions/ROC.ipynb)

#### RoundColumns Function in Vantage
Convert the decimal precision of multiple columns to be the same.<br>
[Python Version](./Recipes/ClearScape_Functions/RoundColumns.ipynb)

#### RowNormalizeFit and RowNormalizeTransform Functions in Vantage
Discover how row-wise normalization can standardize financial metrics like CreditScore, Balance, and EstimatedSalary for better comparisons.<br>
[Python Version](./Recipes/ClearScape_Functions/RowNormalizeFitandTransform.ipynb)

#### Sales Forecasting using Teradata AUTOARIMA
Forecast the amount of future sales by developing a time-series modelling pipeline using Vantage and In-DB analytics<br>
[Python Version](./UseCases/Sales_Forecasting_AutoArima/Sales_Forecasting_AutoArima_Python.ipynb)

#### ScaleFit and ScaleTransform Functions in Vantage
Standardize values to a comparable range, making them suitable for machine learning models without being influenced by original magnitudes.<br>
[Python Version](./Recipes/ClearScape_Functions/ScaleFitandTransform.ipynb)

#### Search all notebooks with a ChatBot
Run this notebook to search all notebooks with a ChatBot.<br>
[Python Version](./ExperienceBot/ExperienceBot_NoCode.ipynb)

#### Search all notebooks with a ChatBot using Vantage
Run this notebook to search all notebooks with a ChatBot and Database connectivity.<br>
[Python Version](./ExperienceBot/ExperienceBot.ipynb)

#### SelectionCriteria Function in Vantage
Choose the best algorithm or model from a set of candidate models for a given dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/SelectionCriteria.ipynb)

#### SentimentExtractor Function in Vantage
Search a customer's comments and evaluate the sentiments. Return a list of sentiment words along with their scores.<br>
[Python Version](./Recipes/ClearScape_Functions/SentimentExtractor.ipynb)

#### Sessionize Function in Vantage
Examine user behavior over a 24 hour time span using clickstream data.<br>
[Python Version](./Recipes/ClearScape_Functions/Sessionize.ipynb)

#### SignifPeriodicities Function in Vantage
Detecting significant periodicities in time series data is crucial for accurate forecasting, especially in industries such as retail or finance, where it impacts decision making.<br>
[Python Version](./Recipes/ClearScape_Functions/SignifPeriodicities.ipynb)

#### SignifResidmean Function in Vantage
Use a statistical test to determine if a passed-in residual series can be classified as being white noise.<br>
[Python Version](./Recipes/ClearScape_Functions/SignifResidmean.ipynb)

#### Silhouette Function in Vantage
Determines the similarity of an object to its cluster (cohesion) compared to other clusters (separation).<br>
[Python Version](./Recipes/ClearScape_Functions/Silhouette.ipynb)

#### SimpleExp Function in Vantage
Use simple exponential smoothing with time series data to generate forecast with minimal computations.<br>
[Python Version](./Recipes/ClearScape_Functions/SimpleExp.ipynb)

#### Simplify Text Analytics with Teradata Python for Generative AI
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Text_Analytics_teradatagenai_AWS/text_analytics_teradatagenai_aws_huggingface.ipynb)

#### SInfo Function in Vantage
Return details about each instance of a series found in a table.<br>
[Python Version](./Recipes/ClearScape_Functions/SInfo.ipynb)

#### Solve Imbalance Class Problems with ClearScape Analytics
How to address imbalanced classes and build better models.<br>
[Python Version](./Recipes/Imbalanced_Data_Handling/Solve_Imbalance_Class_Problems.ipynb)

#### StrApply Function in Vantage
Manipulate a tring by applying a regular expression pattern as well as other standard string operators.<br>
[Python Version](./Recipes/ClearScape_Functions/StrApply.ipynb)

#### Streamlining Analytics with Hyper-Segmented Models
By addressing unique customer behaviors and preferences within specific micro-segments, enhance customer satisfaction, boost operational efficiency, and improve profitability by to deploying and managing hyper-segmented models at scale.<br>
[Python Version](./UseCases/Hyper_Segmented_Models/Hyper_Segmented_Models.ipynb)

#### StringSimilarity Function in Vantage
Calculates the similarity between two strings, using the specified comparison method (jaro, cosine etc).<br>
[Python Version](./Recipes/ClearScape_Functions/StringSimilarity.ipynb)

#### SVM and SVMPredict Functions in Vantage.
Perform classification and regression analysis on datasets<br>
[Python Version](./Recipes/ClearScape_Functions/SVMandSVMPredict.ipynb)

#### TargetEncodingFit and TargetEncodingTransform Functions in Vantage
Apply Target Encoding to replace categorical values with statistically meaningful numerical representations based on the churn rate (Exited).<br>
[Python Version](./Recipes/ClearScape_Functions/TargetEncodingFitandTransform.ipynb)

#### Telco Churn using Enterprise Feature Store
analyzing a time series of data, where each data point represents the outstanding amount at the end of each month. To detect anomalies,<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_EFS.ipynb)

#### Telco Churn using Feature Store in Vantage
Detect anomalies in monthly bill amounts to detect and prevent churn using pre-calculated features stored in Vantage.<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_tdfs4ds_Feature_Store.ipynb)

#### Telco_Customer_Churn_AutoML_Approach.ipynb
Step through an automated approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_EndtoEnd_ModelOps_GIT_Python_indb_AutoML.ipynb)

#### Telco_Customer_Churn_Traditional_Approach.ipynb
Step through a traditional approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_AutoML_Approach.ipynb)

#### Telco_EndtoEnd_ModelOps_GIT_Python_indb_DF.ipynb
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_Traditional_Approach.ipynb)

#### TextParser Function in Vantage
Use this function to parse text by removing punctuation, stop words and then tokenize the remaining text.<br>
[Python Version](./Recipes/ClearScape_Functions/TextParser.ipynb)

#### TrackingOp Function in Vantage
Use geospatial coordinates to track an object's movement and calculate related metrics.<br>
[Python Version](./Recipes/ClearScape_Functions/TrackingOp.ipynb)

#### TrainTestSplit Function in Vantage
Divide a dataset for training and testing a model.<br>
[Python Version](./Recipes/ClearScape_Functions/TrainTestSplit.ipynb)

#### Unstructured Text Analysis With BYO-LLM and NVIDIA GPU Acceleration
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Entity_Recognition_BYOLLM/Entity_Recogntion_BYOLLM_VCL.ipynb)

#### Using Pearson's chi-squared test function in Vantage
Use the Vantage implementation of Pearson's chi-square test to compare goodness of fit, homogeneity, and independence.<br>
[Python Version](./Recipes/ClearScape_Functions/ChiSq.ipynb)

#### Using the Analysis of Variance (Anova) function in Vantage
Use the Anova function to execute a statistical test to analyze the difference between the means of more than two groups<br>
[Python Version](./Recipes/ClearScape_Functions/Anova.ipynb)

#### Using the Vantage Enterprise Feature Store Functions
Work through a series of practical exercises that demonstrate how to use the Enterprise Feature Store capabilities in Vantage. <br>
[Python Version](./FeaturePreview/Enterprise_Feature_Store/EFS_Getting_Started_Python.ipynb)

#### Variational AutoEncoders (VAE) in Generative AI
Define a model, define a loss function, train the model, generate new images and then enhance the quality.<br>
[Python Version](./Recipes/VAE/VAE_Python.ipynb)

#### VectorDistance Function in Vantage
Compute similarity or dissimilarity between two vectors in multi-dimensional space.<br>
[Python Version](./Recipes/ClearScape_Functions/VectorDistance.ipynb)

#### Video Analyzer with Google Gemini
Observe how Gemini 2.0 can be leveraged to generate details about events happening in videos and return those details as readable text.<br>
[Python Version](./Recipes/Video_Processing_using_Gemini/Video_processing_Gemini.ipynb)

#### WhitesGeneral Function in Vantage
Check for the presence of correlation among residual terms after running a regression.<br>
[Python Version](./Recipes/ClearScape_Functions/WhitesGeneral.ipynb)

#### WordEmbeddings Function in Vantage
Produce vectors for each piece of text and find the fimilarities between those pieces.<br>
[Python Version](./Recipes/ClearScape_Functions/WordEmbeddings.ipynb)

#### XGBoost and XGBoostPredict Functions in Vantage
Split a dataset for training and testing.  Then apply XGBoost and XGBoostPredict to generate better models.<br>
[Python Version](./Recipes/ClearScape_Functions/XGBoostandXGBPredict.ipynb)

#### ZTest Function in Vantage
Determine if two population means are different when the population standard deviation or variance is known.<br>
[Python Version](./Recipes/ClearScape_Functions/ZTest.ipynb)

#### Banking Churn Prediction with AutoML
Implement the entire lifecycle of churn prediction using BYOM, VAL and AutoML.<br>
[Python Version](./UseCases/Banking_Customer_Churn_AutoML/Banking_AutoML.ipynb)

#### CategoricalSummary function in Vantage
Display distinct values and counts for a column in a Banking dataset<br>
[Python Version](./Recipes/ClearScape_Functions/CategoricalSummary.ipynb)

#### ColumnSummary function in Vantage
Summarize a column and return standard values like positive, negative, nulls, zeros, etc.<br>
[Python Version](./Recipes/ClearScape_Functions/ColumnSummary.ipynb)

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Credit Risk Assessment using Teradataml OpenSource Functions
Use inDb functions with OpensourceML to create multiple DecisionTreeClassifiers to create multiple predictions of a Credit Risk Assessment.<br>
[Python Version](./UseCases/Credit_Risk_Assessment/Credit_Risk_Assessment_Python.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Customer Reviews Analysis using GenAI
Customer reviews analysis is a crucial aspect of understanding customer sentiment and preferences. By leveraging the power of OpenAIEmbeddings and Vantage InDB Analytic Function, we can gain valuable insights from customer reviews.<br>
[Python Version](./UseCases/Customer_reviews_analysis_using_GenAI/Customer_reviews_analysis_using_GenAI_Python.ipynb)

#### Data Quality Anomaly Detection using Statistical Techniques
Compare the distribution and variation of data between two time intervals usin In-DB function executed via a framework to provide alerts highlighting data anomalies.<br>
[Python Version](./UseCases/Data_Quality_Anomaly_Detection/Data_Quality_Anomaly_Detection_Python.ipynb)

#### DIFF and UNDIFF functions in Vantage
Transform a stationary, seasonal, or non-stationary time series into a differenced time series and then reverse it.<br>
[Python Version](./Recipes/ClearScape_Functions/DIFF_UNDIFF.ipynb)

#### Execute Custom Python Scripts in Vantage
Run an external custom python script in Vantage using Script Table Operator(STO) to execute custom python scripts on Vantage<br>
[Python Version](./Getting_Started/Script_Table_Operator/Getting_Started_STO_Python.ipynb)

#### Ftest function in Vantage
Compare the variance of two independent populations<br>
[Python Version](./Recipes/ClearScape_Functions/FTest.ipynb)

#### GetFutileColumns function in Vantage
Interrogate a table to discover which columns would have no impact on creating a model.<br>
[Python Version](./Recipes/ClearScape_Functions/GetFutileColumns.ipynb)

#### GetRowsWithMissingValues function in Vantage
Display rows that have NULL values in a specified data column<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithMissingValues.ipynb)

#### GetRowsWithoutMissingValues function in Vantage
Explore the rows of a dataset that have non-NULL values in specific columns.<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithoutMissingValues.ipynb)

#### Interactive Npath Widget
Generate Sankey and Icicle charts from event logs.<br>
[Python Version](./Recipes/NPath_Visualizer_Widget/NPath_Visualizer_Widget.ipynb)

#### LinearRegr function in Vantage
Fit data to a curve using a formula that defines the relationship between the explanatory variable and the response variable.<br>
[Python Version](./Recipes/ClearScape_Functions/LinearRegr.ipynb)

#### Mental Health Chat with Fine-tuned OpenAI Model
Train a GPT-3.5 Turbo model using the OpenAI API endpoint.  Ask mental health questions using a chat input box.<br>
[Python Version](./UseCases/Fine_Tuning_OpenAI_Model/Fine_Tuning_OpenAI_Model_Python.ipynb)

#### ModelOps
Implement Model Factory Solution Accelerator using Python commands with the Restful API layer of ClearScape Analytics ModelOps.<br>
[Python Version](./ModelOps/12_ModelOps_Model_Factory_REST_Python.ipynb)

#### ModelOps Feature Engineering
Preprocess and transform data within the ModelOps pipeline<br>
[Python Version](./ModelOps/15_ModelOps_Feature_Engineering.ipynb)

#### ModelOps Notebook Scheduling using BYOM
Users can deploy and schedule notebook jobs, with execution logs available in both HTML and notebook formats.<br>
[Python Version](./ModelOps/16_ModelOps_Notebook_Scheduling.ipynb)

#### Mortgage Calculator chatbot using GenAI: RAG
Build a conversational chatbot and ask questions about a mortgage and available housing within a predefined area using LangChain.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### Mortgage Calculator Chatbot using Trusted AI(RAG)
Experience the integration of LLM models to provide user-friendly responses to queries.  RAG combines retrieval and generative approaches.<br>
[Python Version](./UseCases/Mortgage_Calculator_GenAI/Mortgage_Calculator_Python_TrustedAI_RAG.ipynb)

#### MultivarRegr function in Vantage
Use a formula that defines the relationship between the explanatory variable and multiple response variables.<br>
[Python Version](./Recipes/ClearScape_Functions/MultivarRegr.ipynb)

#### Parkinson's Disease Prediction using Signal Processing
Detect Parkinson's Disease at an early stage by using Vantage InDB functions for model training and scoring to compare the performance of two models against biomedical voice measurements.<br>
[Python Version](./UseCases/Parkinsons_Disease_Prediction/Parkinsons_Disease_Prediction_Python.ipynb)

#### PIMA Predicitons with teradataml OpenSourceML LightFBM using GIT
Use the Teradata OpenSourceML LightGBM model to operationalize the PIMA diabetes use case with Python and ModelOps<br>
[Python Version](./ModelOps/14_ModelOps_GIT_PIMA_Python_osml_LightGBM.ipynb)

#### Resample function in Vantage
Transform an irregular time series into a regular time series.<br>
[Python Version](./Recipes/ClearScape_Functions/Resample.ipynb)

#### SeasonalNormalize and Unnormalize functions in Vantage
Take a non-stationary series and normalize it.  Then unnormalize the series to produce a forcasted series.<br>
[Python Version](./Recipes/ClearScape_Functions/SeasonalNormalize_UnNormalize.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### SimpleImputeFit and SimpleImputeTransform functions in Vantage
Use the two functions to impute missing values in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/SimpleImputeFitandTransform.ipynb)

#### Smoothma function in Vantage
Apply smoothing to a time series to highlight the mean of that series.<br>
[Python Version](./Recipes/ClearScape_Functions/Smoothma.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### TD GeoDataFrame to ESRI Conversion
Extract Teradata geospatial data and export it into widely-used formats such as ESRI shapefiles.<br>
[Python Version](./Recipes/TD_Geo_Esri/TD_Geo_Esri.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

#### UnivariateStatistics function in Vantage
Use the UnivariateStatistics function available in Vantage  to explore the descriptive statistics of a dataset<br>
[Python Version](./Recipes/ClearScape_Functions/UnivariateStatistics.ipynb)

#### WhichMax function in Vantage
Use the WhichMax function to explore a dataset.  Displays all rows that have the maximum value in a specified input table column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMax.ipynb)

#### WhichMin function in Vantage
Use the WhichMin function to return a specified minimum value in a specified table's column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMin.ipynb)

#### Anomaly Detection in Spot Welding Process - Trusted AI
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python Version](./UseCases/Anomaly_Detection/Anomaly_Detection_Python_TrustedAI.ipynb)

#### Automatic Data Pre-Processing with tdprepview
Prepare datasets for tabular supervised or unsupervised machine learning. Prepare data to predict customer churn for a bank.<br>
[Python Version](./Recipes/tdprepview/Automatic_DataPreprocessing_tdprepview.ipynb)

#### Cancer Prediction using the TDAPIClient and VertexAI
Use TDAPIClient to connect to the Google Cloud Vertex API Endpoint to orchestrate Extreme Gradient XG Boost model training and score the model in SageMaker. Deploy the solution's ML model.<br>
[Python Version](./UseCases/CancerPrediction_TDApiClient/CancerPrediction_tdapiClient_VertexAI_CustomModel.ipynb)

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

#### Feature Store and Feature Engineering using tdfs4ds
Setup and deploy a Feature Store and then continue with the process of Feature Engineering.<br>
[Python Version](./Recipes/Feature_Store_Feature_Engg/Feature_Engineering_and_Feature_Store_Usage.ipynb)

#### Product Recommendation via AWS Bedrock
Use AWS Bedrock, Embedding from HuggingFace and Vantage in-DB functions to assist in providing product recommendations to develop a recipe assistant chatbot.<br>
[Python Version](./UseCases/Chat_Powered_Product_Recommendation/Chat_powered_product_recommendation_based_on_search_output.ipynb)

#### Resume Classification Model Training using Vantage In-DB Functions
Use data from a collection of Resume Examples taken from kaggle for categorizing a given resume into any of the labels defined in the dataset. Summarize and ask questions using a ChatBot.<br>
[Python Version](./Resume_Analyzer/Introduction.ipynb)

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

#### Financial Fraud Detection InDB
Detect financial transaction fraud using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [R Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_R.ipynb)

#### Initiate Parallel CPU Inferencing of Hugging Face Models in Vantage
Execute this notebook first to prepare the environment to demonstrate Parallel CPU Inferencing of Hugging Face Models in Vantage<br>
[Python Version](./UseCases/Language_Models_InVantage/Initialization_and_Model_Load.ipynb)

#### Predicting Medical Expenses in Healthcare
Use a dataset containing variables like age, sex, BMI, smoking status, number of children, and region to build machine learning models that accurately predict healthcare costs for insurance policyholders, taking into account factors that affect medical expenses.<br>
[Python Version](./UseCases/Health_Insurance/Health_Insurance_Costs_Python.ipynb)

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Semantic Similarity using OpenSource Language Models
Run Hugging Face Embedding Model in ONNX format to create some embeddings from a Consumer Complaints dataset<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Similarity_Python.ipynb)

#### Complaints Classification with AWS Bedrock
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Classification.ipynb)

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with Google Gemini
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Speech_Recognition.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Banking Customer Churn
Uses a combination of Vantage Analytics Library to prepare data, using machine learning in python and importing the resulting PMML model into Vantage for scoring.<br>
[Python Version](./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb)

#### Battery Defect Analysis
Uses local data (or foreign tables on GCP) to analyze patterns of battery failure, then links to data on AWS for detailed battery measurement.<br>
[Python Version](./UseCases/Battery_Defect_Analysis/Battery_Defect_Analysis_Python.ipynb)

#### Broken Digital Journey
This uses nPath® analysis to show the retail events that prevent the ultimate objective: a purchase.  This uses interactive Sankey diagrams to understand the problems.<br>
[Python Version](./UseCases/Broken_Digital_Journey/Broken_Digital_Journey_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Broken%20Digital%20Journeys%20CX%20Solution%20Accelerator%20Demo%20via%20Python%20Video%20-%20External%20-%20SP004183%20(1).MP4)

#### Car Complaints
Uses geospatial techniques to locate service centers close to the complaint and outlier detection to detect part defects earlier than expected.<br>
[Python-SQL Version](./UseCases/Car_Complaints/Car_Complaints_PY_SQL.ipynb)

#### Carbon Footprint Analytics
A key component of ESG is Carbon Footprint. This demonstrates a part of a solution available from Teradata to integrate multiple data sources to calculate carbon footprint of various corporate activities.<br>
[Python-SQL Version](./UseCases/Carbon_Footprint_Analytics/Carbon_Footprint_Analytics_PY_SQL.ipynb)

#### Competitor Proximity Geospatial Analysis
This looks at the impact on purchasing when people that shop at our stores live within reasonable drive time to a competitor. This could identify proximity based marketing tactics to target larger promotions to those customers to increase share of their spend.<br>
[Python Version](./UseCases/Competitor_Proximity_Geospatial_Analysis/Competitor_Proximity_Geospatial_Analysis_Python.ipynb)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_SQL.ipynb)

#### Data Dictionary
This provides an index to all of the databases used by demo notebooks on this machine, allowing you to use that data for your own notebooks or BI tools.<br>
[Python Version](./UseCases/Data_Dictionary/Data_Dictionary.ipynb)

#### Data Dictionary Raw
This provides linkage to a larger set of databases and tables than are currently used by the demos in Jupyter.<br>
[Python Version](./UseCases/Data_Dictionary/Data_Dictionary_Raw.ipynb)

#### Data Loading (Python)
Shows how to use python to load CSV data from local storage and from zipped files<br>
[Python Version](./Getting_Started/Data_Loading/Data_Loading_Python.ipynb)

#### Data Prep and Transformation
This demonstrates a subset of the over 100 analytic functions in the teradataml package for Python<br>
[Python Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Data_Prep_and_Transformation/Data_Prep_and_Transformation_PY_SQL.ipynb)

#### Data Science 101 with Python
This walks through the Cross-Industry Standard Process for Data Mining (CRISP-DM) from data understanding through modeling and evaluation.<br>
[Python Version](./UseCases/Data_Science_101_with_Python/Data_Science_101_with_Python_Python.ipynb)

#### Diabetes Prediction via BYOM H2O
This uses BYOM to import a trained H2O model to identify potential diabetes patients. BYOM allows the data scientist to create models in languages they prefer and run at scale inside Vantage without moving data.<br>
[Python-SQL Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_BYOM_H2O_PY_SQL.ipynb)

#### Diabetes Prediction via DF and GLM
Decision Forest and Generalized Linear Model are applied to identify factors that indicate diabetes. The earlier the disease is identified, the better the chance of reducing organ damage.<br>
[Python Version](./UseCases/Diabetes_Prediction/Diabetes_Prediction_via_DF_and_GLM_Python.ipynb)

#### Energy Consumption Forecasting
This combines machine learning and BYOM to forecast energy consumption using Vantage to score the model at scale without having to export all data.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting/Energy_Consumption_Forecasting_Python.ipynb)

#### Energy Consumption Forecasting Dataiku
Demonstration of using Dataiku with Vantage. Instructions provided for use with your Dataiku copy + screen shots if you don't have Dataiku. PMML model from Dataiku is imported to Vantage for execution and scoring.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_Dataiku/Energy_Consumption_Forecasting_Dataiku.ipynb)

#### Energy Consumption Forecasting using AzureML
This leverages the power of AzureML and Teradata Vantage to enhance our machine learning capabilities and enable scalable model scoring to forecast energy consumption.<br>
[Python Version](./UseCases/Energy_Consumption_Forecasting_AzureML/Energy_Consumption_Forecasting_AzureML.ipynb)

#### Financial Customer Journey
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness<br>
[Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

#### Financial Fraud Detection InDB
Detect financial transaction fraud  using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Fraud_Detection_Use_Case_Demo_SP004465.MP4)

#### Financial Fraud Detection VIA BYOM
A model that was developed externally  is imported into Vantage for evaluation and execution at scale to detect fraud.<br>
[Python Version](./UseCases/Financial_Fraud_Detection_BYOM/Financial_Fraud_Detection_BYOM_Python.ipynb)

#### Flood Proximity to Climate Risk Analysis
This allows enterprises to rapidly analyze this geographic-related information in real-time at any scale - effectively understanding the impacts of these climate events on entire populations.<br>
[Python Version](./UseCases/Flood_Proximity_Analysis/Flood_Proximity_Analysis_Python.ipynb)

#### Generative AI Question Answering
Uses OpenAI to translate english language questions into SQL queries to run against a table of marketing data. This includes a link to a notebook with instructions for getting the required OpenAI API key.<br>
[Python Version](./UseCases/Generative_Question_Answering_GenAI/Generative_Question_Answering_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Generative%20AI%20Powered%20Search-Based%20Product%20Recommendation%20Use%20Case%20Demo%20-%20External%20-%20SP004561.MP4)

#### Graph Analysis of CDR Records
Uses graph analysis to identify communities and key influencers within Call Data Records.  This uses Script Table Operator to invoke external procedures to work inside the Vantage database without exporting data.<br>
[Python-SQL Version](./UseCases/Graph_Analysis/Graph_Analysis_PY_SQL.ipynb)

#### Green Manufacturing
Uses analytic and ML techniques  to predict how long vehicle testing will take based on combination of features installed.<br>
[Python Version](./UseCases/Green_Manufacturing/Green_Manufacturing_Python.ipynb)

#### Heart Failure Prediction
Machine learning is applied to the complex attributes of patients to help recognize patterns that may lead to heart failure faster than a human may recognize.<br>
[Python-SQL Version](./UseCases/Heart_Failure_Prediction/Heart_Failure_Prediction_Python.ipynb)

#### How to Submit Your Demos
It is very easy to submit your demo for publication. Tell us directory with the notebook and referenced files and grant us access to your database.  We'll take it from there.<br>
[Python Version](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos.ipynb) &ensp; [Video](./Getting_Started/How_to_Submit_Your_Demos/How_to_Submit_Your_Demos_Video.ipynb)

#### Hyper-Personalization
Hyper-personalization creates models from customer iteractions on multiple channels to determine the "Next Best Offer" for the individual.<br>
[Python-SQL Version](./UseCases/Hyper_Personalization/Hyper_Personalization_PY_SQL.ipynb)

#### Intro to Panda for Python
Provides step-by-step instructions on the basics of using Python Pandas with Jupyter notebooks.<br>
[Python Version](./Getting_Started/Intro_to_Pandas_For_Python/Intro_to_Pandas_For_Python.ipynb)

#### Knee Replacement nPath
This uses the ClearScape Analytics nPath® function to provide visuals on the events leading up to the final outcome, in this case, knee replacement.<br>
[Python Version](./UseCases/Knee_Replacement/Knee_Replacement_nPath_Python.ipynb)

#### Marketing Campaign Effectiveness
Examines the results of campaigns by various customer attributes then uses correlation, outlier elimination, and machine learning to identify the best campaigns.<br>
[Python-SQL Version](./UseCases/Marketing_Campaign_Effectiveness/Marketing_Campaign_Effectiveness_Preditction_PY_SQL.ipynb)

#### Multi-Touch Attribution for Business Analyst
This version of the Multi-Touch Attribution demonstration is focused on the interests of the Business Analyst.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/Analyst_MultiTouch_Attribution_PY_SQL.ipynb)

#### Multi-Touch Attribution for Data Scientist
Demonstrates attribution of customer behavior via single touch and multi-touch rule-based models using statistical and algorithmic models. Multiple approaches are demonstrated.<br>
[Python-SQL Version](./UseCases/MultiTouch_Attribution/MultiTouch_Attribution_PY_SQL.ipynb)

#### NYC Taxi Geospatial
Applies geospatial functions to analysis of NYC Taxi pickups and drop off locations.<br>
[Python-SQL Version](./UseCases/NYC_Taxi/NYC_Taxi_Geospatial_PY_SQL.ipynb)

#### Predictive Maintenance
Uses ML functions to predict failures to identify and mitigate potential machine failures before they occur.<br>
[Python-SQL Version](./UseCases/Predictive_Maintenance/Predictive_Maintenance_Python.ipynb)

#### Product Recommendations via Open Source
Uses FlagEmbedding from HuggingFace plus Vantage in-database functions to assess the vector distance between the product entered and similar products.<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenSource_Python.ipynb)

#### Product Recommendations via OpenAI
Uses OpenAIEmbeddings and Vantage in-database function to assists consumers in receiving product recommendations<br>
[Python Version](./UseCases/Recommendations_product_search/Recommendations_product_search_OpenAI_Python.ipynb)

#### Query Service REST API
Demonstration of using REST API calls to Vantage which is useful for web or mobile applications to access and maintain data.<br>
[Python Version](./UseCases/Query_Service/Query_Service.ipynb)

#### Remaining Useful Life Forecasting
Applies machine learning to predict Remaining Useful Life (RUL) of jet engines, allowing scheduling of maintenance and replacement before failure occurs and reduces the cost of maintenance and replacement.<br>
[Python-SQL Version](./UseCases/Remaining_Useful_Life_Forecasting/Remaining_Useful_Life_Forecasting_PY_SQL.ipynb)

#### Retail Demand Forecasting
This creates an ARIMA time series model based on holidays and merchandising activities impacting store sales for a hypermarket retailer.<br>
[Python Version](./UseCases/Retail_Demand_Forecasting/Retail_Demand_Forecasting_Python.ipynb)

#### Sales Forecasting using UAF
A detailed coverage of the analytic steps in sales forecasting including data preparation, exploration, seasonal normalizing, model creation, validation, and forecasting.<br>
[Python Version](./UseCases/Sales_Forecasting_UAF/Sales_Forecasting_UAF_PY_SQL.ipynb)

#### Sensor Data Analytics
Creative application of geospatial to locations of sensors in  a research lab and integration of data from tables with detailed recordings on cloud storage.<br>
[Python-SQL Version](./UseCases/Sensor_Data_Analytics/Sensor_Data_Analytics_PY_SQL.ipynb)

#### Store Sales Forecast via ARIMA
Forecasts total store sales using ARIMA (AutoRegressive Integrated Moving Average)<br>
[Python Version](./UseCases/Store_Sales_Forecasting_ARIMA/Store_Sales_Forecasting_ARIMA_Python.ipynb)

#### Store Sales Forecast via Prophet
Uses the Script Table Operator (STO) to run the H20 machine learning library as an extension to ClearScape Analytics.  H20 runs in parallel inside the Vantage database without exporting data to another platform.<br>
[Python-SQL Version](./UseCases/Store_Sales_Forecasting_Prophet_STO/Store_Sales_Forecasting_Prophet_STO_PY_SQL.ipynb)

#### Telco Customer Churn
This uses logistic regression for supervised learning to predict the probability of a customer switching vendors based on usage patterns, billing information demographics and interactions. XGBoost is then used in database to improve the prediction.<br>
[Python Version](./UseCases/Telco_Customer_Churn/Telco_Customer_Churn_Python.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Telco%20Customer%20Churn%20Use%20Case%20Demo%20-%20External%20-%20SP004520.MP4)

#### Telco Network Coverage
Demonstrates the ability of Geospatial to show signal strength, coverage areas and travel path of customers through cell tower coverage area.<br>
[Python Version](./UseCases/Telco_Network_Coverage/Telco_Network_Coverage_Python.ipynb)

#### teradataml Python Basics
Introduction to Teradataml package for Python including connecting to Vantage, Teradata DataFrames, data manipulation and export to Pandas.<br>
[Python Version](./Getting_Started/teradataml_Python_Basics/teradataml_Python_Basics_Python.ipynb)

#### Text Term Frequency
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.<br>
[Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)

#### Train Delay Path Analysis
Uses nPath displays to show relationship of delays and predictive models to anticipate potential delays and enable proactive planning.<br>
[Python Version](./UseCases/Train_Delay/Train_Delay_Python.ipynb)

#### VAL teradataml Demo
Demonstrated the use of Teradataml in Python to perform descriptive statistics, transformation, model building model evaluation and scoring.<br>
[Python Version](./UseCases/Vantage_Analytics_Library/VAL_teradataml_Demo_Python.ipynb)

#### Vertex AI Integration
 In this tutorial, we will show how to integrate Vantage Analytics capabilities  in Vertex AI ML Pipelines. Vertex AI is the environment for data scientists to deploy ML models.<br>
[Python Version](./UseCases/Vertex_AI_Integration/Vertex_AI_Integration_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xSQL'></a>
### SQL

#### Chatbot using GenAI with insurance PDF document
Uses TD_VectorDistance in Vantage to create a chatbot using Retrieval-Augmented Generation (RAG),  Langchain, and LLM to answer questions using a 24 page travelers insurance policy PDF as source data to answer questions about coverage.<br>
[Python Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_OpenSource_GenAI_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Chat_with_docs_GenAI/Chat_with_docs_VantageDB_GenAI_Python.ipynb)

#### Sales Forecasting with Vantage vs SAS
This demo walks through how a typical SAS user would use sales data to build a simple sales forecasting model and then will showcase how we can achieve the same using Vantage ClearScape Analytics.<br>
[Python-SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/SalesForecast_SAS_Vantage/Sales_Forecasting_SAS_Vantage_SQL.ipynb)

#### Shipping Time Prediction
Use ClearScape Analytics to develop a robust system that can reliably estimate delivery dates, accounting for handling time, transit time, and other relevant variables affecting the actual delivery timeframe.<br>
[Python-SQL Version](./UseCases/Shipping_Time_Prediction/Shipping_Time_Prediction_PY_SQL.ipynb)

#### Telco 5G Quality of Experience
Quality of service analysis of 5G vs 4G video for different situations such as Indoor, outdoor, and moble.<br>
[SQL Version](./UseCases/Telco_5G_QOE_Analysis/Telco_5G_QOE_Analysis_SQL.ipynb)

#### Customer Behavior Analysis
Analysis of customer purchase behavior using nPath® analysis in Python with visualization using Sankey diagrams.<br>
[Python Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_Python.ipynb) &ensp; [SQL Version](./UseCases/Customer_Behavior_Analysis/Customer_Behavior_Analysis_SQL.ipynb)

#### Grocery Recommendations using GenAI
Use context-based product recommendations powered by GenAI Large Language Models to enhance a shopping experience.<br>
[Python-SQL Version](./UseCases/Grocery_Recommendation/Grocery_Recommendation_PY_SQL.ipynb)

#### Solve complex inventory issues with Vantage In-DB functions.
Use resampling to fill-in missing data, find phantom inventory, show key inventory metrics, calculate safe stock levels.<br>
[SQL Version](./UseCases/Inventory_Management/Inventory_Management_SQL.ipynb)

#### ModelOps BYOM with Dataiku
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a Dataiku model.<br>
[Python Version](./ModelOps/17_ModelOps_BYOM_PIMA_DATAIKU.ipynb)

#### ModelOps BYOM with Datarobot
Use BYOM in ModelOps to operationalize the PIMA Diabetes use case using a DataRobot model.<br>
[Python Version](./ModelOps/18_ModelOps_BYOM_PIMA_DataRobot.ipynb)

#### LinearRegr function in Vantage
Fit data to a curve using a formula that defines the relationship between the explanatory variable and the response variable.<br>
[Python Version](./Recipes/ClearScape_Functions/LinearRegr.ipynb)

#### MultivarRegr function in Vantage
Use a formula that defines the relationship between the explanatory variable and multiple response variables.<br>
[Python Version](./Recipes/ClearScape_Functions/MultivarRegr.ipynb)

#### 4D Analytics on bike sharing
Demonstration of Geospatial and TimeSeries using Austin bike trip data between 2014 and 2017.<br>
[Python-SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/4D_Analytics_on_bike_sharing/4D_Analytics_on_bike_sharing_SQL.ipynb)

#### Air Passenger Forecasting
Applies Auto Regressive Integrated Moving Average (ARIMA) analysis to forecast airplane passenger volume.<br>
[SQL Version](./UseCases/Air_Passenger_Forecasting/Air_Passenger_Forecasting_SQL.ipynb)

#### Basic Jupyter Navigation
When running a Jupyter Notebook, there are various indicators that show what is happening. This is a guide to those indicators.<br>
[SQL Version](./Getting_Started/Basic_Jupyter_Navigation/Basic_Jupyter_Navigation_SQL.ipynb)

#### Cash Demand Forecasing
Predicts the future demand for cast in Automatic Teller Machines (ATMs) using Auto Regressive Integrated Moving Average  (ARIMA) using In-Database functions.<br>
[SQL Version](./UseCases/Cash_Demand_Forecasting/Cash_Demand_Forecasting_SQL.ipynb)

#### Charting and Visualization
Data from queries is brought to life with graphics and charts. This shows how to use the %chart magic command to display results.<br>
[SQL Version](./Getting_Started/Charting_and_Visualization/Charting_and_Visualization_SQL.ipynb)

#### Consumer Complaints
Uses government consumer complaint data with SQL queries and visualizations to identify source of top complaints.<br>
[SQL Version](./UseCases/Consumer_Complaints/Consumer_Complaints_SQL.ipynb)

#### Credit Card Data Preparation
This shows the use of ClearScape analytics to reduce the pre-processing effort of incoming raw credit card data to prepare for analysis of potential loan defaulters.<br>
[SQL Version](./UseCases/Credit_Card_Data_Preparation/Credit_Card_Data_Preparation_SQL.ipynb)

#### Customer 360
This integrates data about customers from multiple sources using multiple matching techniquest to create the "Golden Customer Record" and calculate LTV.<br>
[SQL Version](./UseCases/Customer360/CustomerIdentityMatching_SQL.ipynb)

#### Data Loading (SQL)
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[SQL Version](./Getting_Started/Data_Loading/Data_Loading_SQL.ipynb)

#### Deep History via Object Store
This demonstrates integration of local data or foreign tables on GCP and integration across cloud providers to detailed historical sales records on AWS.<br>
[SQL Version](./UseCases/Deep_History_via_Object_Store/Deep_History_via_Object_Store_SQL.ipynb)

#### Digital Identity Management
Combines ClearScape Analytics with Celebrus to track unique customers across web sessions and devices to drive personalized experiences<br>
[SQL Version](./UseCases/Digital_Identity_Management/Digital_Identity_Management_SQL.ipynb)

#### Financial Customer Journey
Uses analytic techniques to find new customers, measure marketing attribution, and maximizing marketing effectiveness<br>
[Python-SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Financial_Customer_Journey/Financial_Customer_Journey_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/Financial_Customer_Journey_Use_Case_Demo_SP004464.MP4)

#### Fourier Transforms
Fourier transformations are demonstrated to filter out noise from signals to allow identification of underlying patterns.<br>
[SQL Version](./UseCases/Fourier_Transforms/Fourier_Transforms_SQL.ipynb)

#### Insurance Policy Temporal
Show As-IS/As-Was capabilities of Vantage Temporal to dramatically simplify the SQL and improve performance for analyzing insurance policies versus claims.<br>
[SQL Version](./UseCases/Insurance_Policy_Temporal/Insurance_Policy_Temporal_SQL.ipynb)

#### K-Means Clustering and ML model
This uses the unsupervised K-Means ML algorithm to identify patterns in retail purchases.<br>
[SQL Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_SQL.ipynb)

#### Knee Replacement Attribution
The ClearScape Analytics Attribution function is used to determine the weight of various events that precede the final outcome, in this example, knee replacement.<br>
[SQL Version](./UseCases/Knee_Replacement/Knee_Replacement_Attribution_SQL.ipynb)

#### NYC Taxi Temporal
Time series data can answer the questions about what was happening at a point in time. This applies Time series and temporal capabilities  of vantage to NYC taxi data.<br>
[SQL Version](./UseCases/NYC_Taxi/NYC_Taxi_Temporal_SQL.ipynb)

#### Outlier Analysis
Outliers in an analysis skew the results and make it difficult to recognize the main patterns. ClearScape Analytics has tools to remove outliers automatically.<br>
[SQL Version](./UseCases/Outlier_Analysis/Outlier_Analysis_SQL.ipynb)

#### SQL Basics in Jupyter
This guide will walk you through writing your first SQL queries in Jupyter.  It uses some of the Vantage system tables as a source for the queries.<br>
[SQL Version](./Getting_Started/SQL_Basics_in_Jupyter/SQL_Basics_in_Jupyter_SQL.ipynb)

#### Text Term Frequency
Use NGram splitter to analyze comments  retail products to determine patterns of words used to describe products.<br>
[Python Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_Python.ipynb) &ensp; [Python-SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_PY_SQL.ipynb) &ensp; [SQL Version](./UseCases/Text_Term_Frequency/Text_Term_Frequency_SQL.ipynb)

#### VAL Analytics and ML
Demonstration of Vantage Analytic Library scoring and analytic functions like linear regression, decision trees, K-Means clustering, Factor Analysis, etc.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Analytics_and_ML_SQL.ipynb)

#### VAL Descriptive Statistics
This performs in-database analysis of data values, distribution, histograms, and text field analysis using SQL to access the Vantage Analytics Library.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Descriptive_Statistics_SQL.ipynb)

#### VAL Hypothesis Tests
This demonstrates a subset of the 18 hypothesis test in the Vantage Analytics library  using SQL such as Parametric, Binomial, Kolmogorov/Smirnoff, Rank, etc.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Hypothesis_Tests_SQL.ipynb)

#### VAL Overview
Vantage Analytics Library (VAL) is a set of over 50 functions for advanced analytics. This provides an overview and links to an 8 minute video overview.<br>
[SQL Version](./UseCases/Vantage_Analytics_Library/VAL_Overview_SQL.ipynb)

#### Vantage Query Log Analysis
Analysis of sessions and queries  you executed using the built-in logging facilities of Vantage.<br>
[SQL Version](./UseCases/Vantage_Query_Log_Analysis/Vantage_Query_Log_Analysis_SQL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xR'></a>
### R

#### ModelOps Introduction & List of Notebooks
This introduction and table of contents introduces you to ModelOps and provides a launch for ModelOps. It is **recommended** to go through ModelOps demonstrations in sequence.<br>
[Information](./ModelOps/00_ModelOps_Introduction.ipynb)

#### Customer Segmentation with K-means
Use K-means clustering to segment customers by purchase volume and value using R and tdplyr<br>
[R Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_R.ipynb)

#### Teradata Package for R Basics
Discoverer how the Teradata Package for R (tdplyr) allows users to develop and run R programs to take advantage of Big Data and Machine Learning analytic capabilities of Vantage.<br>
[Information](Getting_Started/tdplyr_R_Basics/tdplyr_R_Basics.ipynb)

#### Financial Fraud Detection InDB
Detect financial transaction fraud using powerful in-database machine learning functions<br>
[Python Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_Python.ipynb) &ensp; [R Version](./UseCases/Financial_Fraud_Detection_InDB/Financial_Fraud_Detection_InDB_R.ipynb)

#### tdplyr R Basics
Work through using the bgasics of the Teradata R package, tdplyr<br>
[R Version](./Getting_Started/tdplyr_R_Basics/tdplyr_R_Basics.ipynb)

#### Data Loading ('R')
Shows multiple ways to load data from local CSV files, and cloud files on Google and AWS using the SQL kernel.<br>
[R Version](./Getting_Started/Data_Loading/Data_Loading_R.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Solution Accelerator

<a id='xAnomaly-Detection'></a>
### Anomaly Detection

#### Anomaly Detection of Outstanding Amounts
Anomaly detection in bank accounts can help in identifying unusual patterns, potentially flagging issues like errors or fraudulent activities.  Enterprise re-use of Features ensures rapid creation & deployment of models while new Features can be created and used without extensive engineering support.<br>
[Python Version](./UseCases/AnomalyDetection_OutstandingAmount_FS/AnomalyDetection_OutstandingAmount_FeatureStore.ipynb)

#### Anomaly Detection
Evaluates potential failures in spot welds based on voltage anomalies during the welding process.<br>
[Python-SQL Version](./UseCases/Anomaly_Detection/Anomaly_Detection_PY_SQL.ipynb) &ensp; [Video](https://storage.googleapis.com/clearscape_analytics_videos/ClearScape%20Analytics%20Experience%20-%20Anomaly%20Detection%20Use%20Case%20Demo%20-%20External%20-%20SP004519.MP4)

#### Data Quality Anomaly Detection using Statistical Techniques
Compare the distribution and variation of data between two time intervals usin In-DB function executed via a framework to provide alerts highlighting data anomalies.<br>
[Python Version](./UseCases/Data_Quality_Anomaly_Detection/Data_Quality_Anomaly_Detection_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xCustomer-Complaint-Analysis'></a>
### Customer Complaint Analysis

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

#### Complaints Classification with AWS Bedrock
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Classification.ipynb)

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Summarization with AWS Bedrock
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Summarization.ipynb)

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with AWS Bedrock
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Speech_Recognition.ipynb)

#### Speech Recognition and Sentiment Analysis with Google Gemini
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Speech_Recognition.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xEnterprise-Feature-Store'></a>
### Enterprise Feature Store

#### Anomaly Detection of Outstanding Amounts
Anomaly detection in bank accounts can help in identifying unusual patterns, potentially flagging issues like errors or fraudulent activities.  Enterprise re-use of Features ensures rapid creation & deployment of models while new Features can be created and used without extensive engineering support.<br>
[Python Version](./UseCases/AnomalyDetection_OutstandingAmount_FS/AnomalyDetection_OutstandingAmount_FeatureStore.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xEnd-to-End'></a>
### End-to-End

#### End-to-End Demo for Financial Fraud Detection using Vantage
Introduction to the traditional and automated approaches of building models to detect fraud.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Introduction_Teradata_End_to_End_Financial_Fraud_Detection.ipynb)

#### Financial Fraud Detection using a Traditional Approach
Step through a traditional approach of building models to identify and identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_Traditional_Approach.ipynb)

#### Financial Fraud Detection using AutoML
Step through an automated approach of building models to identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_AutoML_Approach.ipynb)

#### In-Database XGBoost using ModelOps and Git for Financial Fraud Detection
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/FinFraud_EndtoEnd_ModelOps_GIT_Python_indb_XGB.ipynb)

#### Telco_Customer_Churn_AutoML_Approach.ipynb
Step through an automated approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_EndtoEnd_ModelOps_GIT_Python_indb_AutoML.ipynb)

#### Telco_EndtoEnd_ModelOps_GIT_Python_indb_DF.ipynb
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_Traditional_Approach.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Other

<a id='xNew'></a>
### New

#### Analysis of NBA BasketBall Data
Use Language Modeling to return answers to common NBA Statistics questions for a single game or questions about players over several years.<br>
[Python Version](./UseCases/BasketBall_Analysis/NBA_Data_Analysis_Python.ipynb)

#### Banking Customer Churn Analysis using AutoML with a JSON Parameter File
Use Automated Machine Learning to automate the entire process of developing a predictive model by saving parameters into a JSON file and then execute the model to create a Prediction and a ROC curve. <br>
[Python Version](./UseCases/Banking_Churn_AutoML_JSON/Banking_Churn_AutoML_JSON.ipynb)

#### End-to-End Demo for Customer Churn in Telco
Introduction to the traditional and automated approaches of building models to identify and predict customer churn.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Introduction_Teradata_End_to_End_Telco_Customer_Churn.ipynb)

#### End-to-End Demo for Financial Fraud Detection using Vantage
Introduction to the traditional and automated approaches of building models to detect fraud.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Introduction_Teradata_End_to_End_Financial_Fraud_Detection.ipynb)

#### Financial Fraud Detection using a Traditional Approach
Step through a traditional approach of building models to identify and identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_Traditional_Approach.ipynb)

#### Financial Fraud Detection using AutoML
Step through an automated approach of building models to identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_AutoML_Approach.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

#### In-Database XGBoost using ModelOps and Git for Financial Fraud Detection
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/FinFraud_EndtoEnd_ModelOps_GIT_Python_indb_XGB.ipynb)

#### Simplify Text Analytics with Teradata Python for Generative AI
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Text_Analytics_teradatagenai_AWS/text_analytics_teradatagenai_aws_huggingface.ipynb)

#### Telco_Customer_Churn_AutoML_Approach.ipynb
Step through an automated approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_EndtoEnd_ModelOps_GIT_Python_indb_AutoML.ipynb)

#### Telco_Customer_Churn_Traditional_Approach.ipynb
Step through a traditional approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_AutoML_Approach.ipynb)

#### Telco_EndtoEnd_ModelOps_GIT_Python_indb_DF.ipynb
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_Customer_Churn_Traditional_Approach.ipynb)

#### Teradata Use Case Solution Offerings
Find out how Teradata can help you deliver better customer experience, build customer loyalty, and accelerate value leveraging the most powerful, open, and connected AI/ML capabilities on the market through our use case solution offerings<br>
[Information](./BusinessSolutions/BusinessSolutionsOfferings.ipynb)

#### Unstructured Text Analysis With BYO-LLM and NVIDIA GPU Acceleration
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Entity_Recognition_BYOLLM/Entity_Recogntion_BYOLLM_VCL.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xParallel-CPU-Inferencing'></a>
### Parallel CPU Inferencing

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### Semantic Clustering using OpenSource Language Models
Bring a language model into Vantage and run NLP models in the database<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Clustering_Python.ipynb)

#### Semantic Similarity using OpenSource Language Models
Run Hugging Face Embedding Model in ONNX format to create some embeddings from a Consumer Complaints dataset<br>
[Python Version](./UseCases/Language_Models_InVantage/Semantic_Similarity_Python.ipynb)

#### Initiate Parallel CPU Inferencing of Hugging Face Models in Vantage
Execute this notebook first to prepare the environment to demonstrate Parallel CPU Inferencing of Hugging Face Models in Vantage<br>
[Python Version](./UseCases/Language_Models_InVantage/Initialization_and_Model_Load.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xDashboard-Notebook'></a>
### Dashboard Notebook

#### Resume Classification Model Training using Vantage In-DB Functions
Use data from a collection of Resume Examples taken from kaggle for categorizing a given resume into any of the labels defined in the dataset. Summarize and ask questions using a ChatBot.<br>
[Python Version](./Resume_Analyzer/Introduction.ipynb)

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xEFS'></a>
### EFS

#### Telco Churn using Enterprise Feature Store
analyzing a time series of data, where each data point represents the outstanding amount at the end of each month. To detect anomalies,<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_EFS.ipynb)

#### Telco Churn using Feature Store in Vantage
Detect anomalies in monthly bill amounts to detect and prevent churn using pre-calculated features stored in Vantage.<br>
[Python Version](./UseCases/EFS_Demo/Telco_Churn_using_tdfs4ds_Feature_Store.ipynb)

#### Using the Vantage Enterprise Feature Store Functions
Work through a series of practical exercises that demonstrate how to use the Enterprise Feature Store capabilities in Vantage. <br>
[Python Version](./FeaturePreview/Enterprise_Feature_Store/EFS_Getting_Started_Python.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Cloud Provider

<a id='xAWS'></a>
### AWS

#### Insights from Sentiment Analysis with AWS Bedrock
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Sentiment_Analysis.ipynb)

#### Complaints Classification with AWS Bedrock
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Classification.ipynb)

#### Complaints Clustering with AWS Bedrock
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaints_Clustering.ipynb)

#### Complaints Summarization with AWS Bedrock
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Summarization.ipynb)

#### Topic Modelling with AWS Bedrock
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Topic_Modelling.ipynb)

#### Customer Complaints Analysis with Customer360 with AWS Bedrock
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Customer360.ipynb)

#### Simplify Text Analytics with Teradata Python for Generative AI
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Text_Analytics_teradatagenai_AWS/text_analytics_teradatagenai_aws_huggingface.ipynb)

#### Speech Recognition and Sentiment Analysis with AWS Bedrock
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Bedrock/Speech_Recognition.ipynb)

#### Unstructured Text Analysis With BYO-LLM and NVIDIA GPU Acceleration
The teradatagenai Python library enables everyone to run analytics on their unstructured data directly within GPU Compute Cluster in VantageCloud Lake.<br>
[Python Version](./VantageCloud_Lake/UseCases/Entity_Recognition_BYOLLM/Entity_Recogntion_BYOLLM_VCL.ipynb)

#### RAG Solution with Embedding/Chunking with Vantage and AWS Bedrock
Chunk PDFs, run embedding, try vector db style indexing in Vantage and then query Language Model with context/prompts after semantic search<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_QueryPDF.ipynb)

#### RAG Solution with Vantage Model Catalog and AWS Bedrock
Explore how to do extract data from metadata tables of Teradata using embedding and vector db style indexing in Vantage and then query LLM with context/prompts to get the details<br>
[Python Version](./UseCases/Language_Models_InVantage/RAG_and_Bedrock_Querycatalogue.ipynb)

#### Customer Complaint Analysis with AWS Bedrock
This is a collection of demos showing multiple methods of dealing with customer complaints using various GenAI techniques.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Bedrock/Complaint_Analysis_Dashboard.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xGoogle'></a>
### Google

#### Complaints Classification with Google Gemini
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Classification.ipynb)

#### Complaints Clustering with Google Gemini
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaints_Clustering.ipynb)

#### Complaints Summarization with Google Gemini
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with Google Gemini
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with Google Gemini
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with Google Gemini
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Speech_Recognition.ipynb)

#### Topic Modelling with Google Gemini
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_GenAI_Gemini/Topic_Modelling.ipynb)

#### Customer Complaint Analysis with Google Gemini
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Google Gemini.<br>
[Information](./UseCases/Complaints_Analysis_GenAI_Gemini/Complaint_Analysis_Dashboard.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xAzure'></a>
### Azure

#### Customer Complaints Analysis Dashboard with OpenAI
This is a Dashboard with descriptions and links to various notebooks on various topics using Teradata Vantage and Microsoft Azure.<br>
[Information](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Dashboard.ipynb)

#### Getting Started With Azure
Follow these steps to create your first Azure account and create an Azure Machine Learning workspace to complete our AzureML use cases.<br>
[Information](./UseCases/Energy_Consumption_Forecasting_AzureML/Getting_Started_with_Azure.ipynb)

#### Getting Started with Azure OpenAI
Follow these instructions to setup the Azure OpenAI endpoint and generate the access Keys required to run the model.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Azure-OpenAI.ipynb)

#### Complaints Classification with OpenAI
Classify customer complaints to swiftly identify and address concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Classification.ipynb)

#### Complaints Clustering with OpenAI
Use advanced clustering techniques using AI Embeddings model to group similar customer complaints together.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaints_Clustering.ipynb)

#### Complaints Summarization with OpenAI
Efficiently manage and analyze customer complaints, providing actionable insights to enhance customer satisfaction and improve business operations.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Summarization.ipynb)

#### Customer Complaints Analysis with Customer360 with OpenAI
Customer360 which is a comprehensive approach to managing customer complaints and feedback within the framework of a Customer 360-degree view<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Complaint_Analysis_Customer360.ipynb)

#### Sentiment Analysis with OpenAI
Extract insights from unstructured data to identify and address customer concerns.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Sentiment_Analysis.ipynb)

#### Speech Recognition and Sentiment Analysis with OpenAI
Analyzing consumer complaints using audio files conversations<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Speech_Recognition.ipynb)

#### Topic Modelling with OpenAI
Uncover hidden insights from vast amounts of consumer complaints data to enable the identification of trends.<br>
[Python Version](./UseCases/Complaints_Analysis_Azure_OpenAI/Topic_Modelling.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

## Recipes

<a id='xClearScape-Analytic-Functions'></a>
### ClearScape Analytic Functions

#### Antiselect function in Vantage
Return all columns except those specified in an exclude parameter.<br>
[Python Version](./Recipes/ClearScape_Functions/Antiselect.ipynb)

#### BincodeFit and BincodeTransform functions in Vantage
Transform continuous data into bins.  Then apply the transformation to a DataFrame.<br>
[Python Version](./Recipes/ClearScape_Functions/BincodeFitandTransform.ipynb)

#### CategoricalSummary function in Vantage
Display distinct values and counts for a column in a Banking dataset<br>
[Python Version](./Recipes/ClearScape_Functions/CategoricalSummary.ipynb)

#### ColumnSummary function in Vantage
Summarize a column and return standard values like positive, negative, nulls, zeros, etc.<br>
[Python Version](./Recipes/ClearScape_Functions/ColumnSummary.ipynb)

#### Ftest function in Vantage
Compare the variance of two independent populations<br>
[Python Version](./Recipes/ClearScape_Functions/FTest.ipynb)

#### GetFutileColumns function in Vantage
Interrogate a table to discover which columns would have no impact on creating a model.<br>
[Python Version](./Recipes/ClearScape_Functions/GetFutileColumns.ipynb)

#### GetRowsWithMissingValues function in Vantage
Display rows that have NULL values in a specified data column<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithMissingValues.ipynb)

#### GetRowsWithoutMissingValues function in Vantage
Explore the rows of a dataset that have non-NULL values in specific columns.<br>
[Python Version](./Recipes/ClearScape_Functions/GetRowsWithoutMissingValues.ipynb)

#### Histogram function in Vantage
Calculate the frequency distribution of a data set using multiple methods: Sturges, Scot, Variable-width, Equal-width<br>
[Python Version](./Recipes/ClearScape_Functions/Histogram.ipynb)

#### LinearRegr function in Vantage
Fit data to a curve using a formula that defines the relationship between the explanatory variable and the response variable.<br>
[Python Version](./Recipes/ClearScape_Functions/LinearRegr.ipynb)

#### MultivarRegr function in Vantage
Use a formula that defines the relationship between the explanatory variable and multiple response variables.<br>
[Python Version](./Recipes/ClearScape_Functions/MultivarRegr.ipynb)

#### OutlierFilterFit and OutlierFilterTransform
Use outlier filtering to identify and remove outliers from a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/OutlierFilterFitandTransform.ipynb)

#### QQNorm function in Vantage
Determine if values in a data column follow normal distribution or not.<br>
[Python Version](./Recipes/ClearScape_Functions/QQNorm.ipynb)

#### SimpleImputeFit and SimpleImputeTransform functions in Vantage
Use the two functions to impute missing values in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/SimpleImputeFitandTransform.ipynb)

#### UnivariateStatistics function in Vantage
Use the UnivariateStatistics function available in Vantage  to explore the descriptive statistics of a dataset<br>
[Python Version](./Recipes/ClearScape_Functions/UnivariateStatistics.ipynb)

#### Using Pearson's chi-squared test function in Vantage
Use the Vantage implementation of Pearson's chi-square test to compare goodness of fit, homogeneity, and independence.<br>
[Python Version](./Recipes/ClearScape_Functions/ChiSq.ipynb)

#### Using the Analysis of Variance (Anova) function in Vantage
Use the Anova function to execute a statistical test to analyze the difference between the means of more than two groups<br>
[Python Version](./Recipes/ClearScape_Functions/Anova.ipynb)

#### WhichMax function in Vantage
Use the WhichMax function to explore a dataset.  Displays all rows that have the maximum value in a specified input table column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMax.ipynb)

#### WhichMin function in Vantage
Use the WhichMin function to return a specified minimum value in a specified table's column.<br>
[Python Version](./Recipes/ClearScape_Functions/WhichMin.ipynb)

#### Automatic Data Pre-Processing with tdprepview
Prepare datasets for tabular supervised or unsupervised machine learning. Prepare data to predict customer churn for a bank.<br>
[Python Version](./Recipes/tdprepview/Automatic_DataPreprocessing_tdprepview.ipynb)

#### DIFF and UNDIFF functions in Vantage
Transform a stationary, seasonal, or non-stationary time series into a differenced time series and then reverse it.<br>
[Python Version](./Recipes/ClearScape_Functions/DIFF_UNDIFF.ipynb)

#### Resample function in Vantage
Transform an irregular time series into a regular time series.<br>
[Python Version](./Recipes/ClearScape_Functions/Resample.ipynb)

#### SeasonalNormalize and Unnormalize functions in Vantage
Take a non-stationary series and normalize it.  Then unnormalize the series to produce a forcasted series.<br>
[Python Version](./Recipes/ClearScape_Functions/SeasonalNormalize_UnNormalize.ipynb)

#### Smoothma function in Vantage
Apply smoothing to a time series to highlight the mean of that series.<br>
[Python Version](./Recipes/ClearScape_Functions/Smoothma.ipynb)

#### ACF and PACF Functions in Vantage
Convert time series data and then normalize it. Then calculate the partial autocorrelation coefficients using the LEVINSON_DURBIN algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/ACF_PACF.ipynb)

#### Analysis of NBA BasketBall Data
Use Language Modeling to return answers to common NBA Statistics questions for a single game or questions about players over several years.<br>
[Python Version](./UseCases/BasketBall_Analysis/NBA_Data_Analysis_Python.ipynb)

#### Arima Functions in Vantage
Execute the Arima Functions: ArimaEstimate, ArimaValidate, and ArimaForecast and use teradataml to create graphs with results.<br>
[Python Version](./Recipes/ClearScape_Functions/Arima.ipynb)

#### Attribution Function in Vantage
Use the Attribution function to assign scores to events that will then  be inserted in an Attribution Model.<br>
[Python Version](./Recipes/ClearScape_Functions/Attribution.ipynb)

#### Augmented Call Center: Revolutionizing Customer Support with Advanced AI Technologies
Experience the next generation of customer support with our Augmented Call Center. Harness the power of advanced AI technologies to deliver exceptional service, drive customer loyalty, and achieve operational excellence.<br>
[Python Version](./UseCases/Augmented_call_center_AgenticAI/Augmented_call_center_AgenticAI.ipynb)

#### Banking Customer Churn Analysis using AutoML with a JSON Parameter File
Use Automated Machine Learning to automate the entire process of developing a predictive model by saving parameters into a JSON file and then execute the model to create a Prediction and a ROC curve. <br>
[Python Version](./UseCases/Banking_Churn_AutoML_JSON/Banking_Churn_AutoML_JSON.ipynb)

#### BinaryMatrixOP Function in Vantage
use the BinaryMatrixOp to perform multiplication operation in MATCH mode between two matrices holding REAL payload.<br>
[Python Version](./Recipes/ClearScape_Functions/BinaryMatrixOp.ipynb)

#### BinarySeriesOp Function in Vantage
Use BinarySeriesOp to convolve two series with digital signal processing.<br>
[Python Version](./Recipes/ClearScape_Functions/BinarySeriesOp.ipynb)

#### BreuschGodfrey Function in Vantage
Check for the presence of serial correlation among the residual and error terms after running a regression associated with a fitted model.<br>
[Python Version](./Recipes/ClearScape_Functions/BreuschGodfrey.ipynb)

#### BreuschPaganGodfrey Function in Vantage
Detect the presence of variability of the error term during regression analysis. Observe the difference between observed values and predicted values, is not constant across all levels of the independent variables.<br>
[Python Version](./Recipes/ClearScape_Functions/BreuschPaganGodfrey.ipynb)

#### ClassificationEvaluator Function in Vantage
Compute evaluation metrics to compare multiple classification models and summarize how close predictions are to their expected values.<br>
[Python Version](./Recipes/ClearScape_Functions/ClassificationEvaluator.ipynb)

#### ColumnTransformer Function in Vantage
Transform input data columns in a single operation by providing only the FIT dataframes generated by the analytic functions and then runs all the transformations in a single operation.<br>
[Python Version](./Recipes/ClearScape_Functions/ColumnTransformer.ipynb)

#### ConvertTo Function in Vantage
Convert data types in columns of a source table into other data types without using complicated format strings.<br>
[Python Version](./Recipes/ClearScape_Functions/ConvertTo.ipynb)

#### Convolve Function in Vantage
Use this function to convolve two series into new time series using the CONV_DFFT algorithm.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve.ipynb)

#### Convolve2 Function in Vantage
Convolve 2 matching payload fields of 2 matrices into a new source matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/Convolve2.ipynb)

#### CumulPeriodogram Function in Vantage
Use a cumulative periodogram statistics test to determine if any periodicities (seasonal cycles) exist in the residual series being tested.<br>
[Python Version](./Recipes/ClearScape_Functions/CumulPeriodogram.ipynb)

#### Customer Retail Journeys
Use Clearscape Analytics functions to analyze customer digital behaviors and experiences in an effort to diagnose issues and events that could possibly inhibit their purchases.<br>
[Python Version](./UseCases/Retail_Journey/Customer_Retail_Journey.ipynb)

#### Customer Segmentation with K-means Clustering and Data Preparation Pipelines
Leverage native Vantage processing for efficient and highly scalable data preparation, model training, and evaluation workflows.<br>
[Python Version](./UseCases/K-Means_Clustering_and_ML_model/K-Means_Clustering_and_ML_model_Python.ipynb)

#### DataRobotPredict Function in Vantage
Use this function to load a pre-built DataRobot Model into Vantage and then use it to score a dataset in the database.<br>
[Python Version](./Recipes/ClearScape_Functions/DataRobotPredict.ipynb)

#### DecisionForest and TDDecisionForestPredict Functions in Vantage
Create predictive models based on the algorithm for decision tree training and prediction.  Then use those models to analyze the input data and make predictions.<br>
[Python Version](./Recipes/ClearScape_Functions/DecisionForestandTDDecisionForestPredict.ipynb)

#### DFFT and IDFFT Functions in Vantage
This is an example of how to use DFFT() when convolving two series with digital signal processing.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT_IDFFT.ipynb)

#### DFFT2 and IDFFT2 Functions in Vantage
Compute the two-dimension fourier transform using the input matrix with real numbers only for a matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT2_IDFFT2.ipynb)

#### DFFT2Conv Function in Vantage
Load time series data and then convert it into a TDMatrix.  Then compute the two-dimension fourier transform with only real numbers. Then convert the output to polar data in Radian format.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFT2Conv.ipynb)

#### DFFTConv Function in Vantage
Load time series data and then convert it into a TDSeries.  Then compute the Fourier Transform Coefficients and convert to polar data in Radian format.<br>
[Python Version](./Recipes/ClearScape_Functions/DFFTConv.ipynb)

#### DickeyFuller Function in Vantage
Test data in a Time Series to determine if it is stationary or non-stationary.<br>
[Python Version](./Recipes/ClearScape_Functions/DickeyFuller.ipynb)

#### DTW Function in Vantage
Measure the similarity between two time series.<br>
[Python Version](./Recipes/ClearScape_Functions/DTW.ipynb)

#### DurbinWatson Function in Vantage
Determine if there is evidence of serial correlation between residuals in a residual series.<br>
[Python Version](./Recipes/ClearScape_Functions/DurbinWatson.ipynb)

#### End-to-End Demo for Customer Churn in Telco
Introduction to the traditional and automated approaches of building models to identify and predict customer churn.<br>
[Information](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Introduction_Teradata_End_to_End_Telco_Customer_Churn.ipynb)

#### Extract Results Function in Vantage
Retrieve the values stored in the Adaptive Radix Tree (ART) that's created by the execution of other analytic functions.<br>
[Python Version](./Recipes/ClearScape_Functions/ExtractResults.ipynb)

#### Feature Store and Feature Engineering using tdfs4ds
Setup and deploy a Feature Store and then continue with the process of Feature Engineering.<br>
[Python Version](./Recipes/Feature_Store_Feature_Engg/Feature_Engineering_and_Feature_Store_Usage.ipynb)

#### FillrowId Function in Vantage
Add a column of unique row identifiers to a table.<br>
[Python Version](./Recipes/ClearScape_Functions/FillRowId.ipynb)

#### Financial Fraud Detection using a Traditional Approach
Step through a traditional approach of building models to identify and identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_Traditional_Approach.ipynb)

#### Financial Fraud Detection using AutoML
Step through an automated approach of building models to identify fraud.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/Financial_Fraud_Detection_AutoML_Approach.ipynb)

#### Fit and Transform functions in Vantage
Determine if a specific numeric transformation can be applied to target columns and make the output available to the Transform() function.<br>
[Python Version](./Recipes/ClearScape_Functions/FitandTransform.ipynb)

#### FitMetrics Function in Vantage
Generate googness-of-fit metrics from multivariate series.<br>
[Python Version](./Recipes/ClearScape_Functions/FitMetrics.ipynb)

#### GenseriesFormula Function in Vantage
Define and apply a formula to generate a time series.<br>
[Python Version](./Recipes/ClearScape_Functions/GenseriesFormula.ipynb)

#### GenseriesSinusoids Function in Vantage
Generate a time series containing a subset of the sinusoidal's element's periodicities, whose payload content value is of type REAL.<br>
[Python Version](./Recipes/ClearScape_Functions/GenseriesSinusoids.ipynb)

#### GLM and TDGLMPredict Functions in Vantage
Use a generalized linear model to perform regression and classification analysis on a data set.  Then predict the target values and class labels from that data set.<br>
[Python Version](./Recipes/ClearScape_Functions/GLMandTDGLMPredict.ipynb)

#### GLMPerSegment and GLMPredictPerSegment Functions in Vantage
Create models by partitioning datasets on a key value.  Then use those models to predict future values (regressions) and class labels (classifications).<br>
[Python Version](./Recipes/ClearScape_Functions/GLMPerSegmentandGLMPredictPerSegment.ipynb)

#### Hashing Your Data
Work through 4 use cases that demonstrate the usage of the Teradata hash function.<br>
[Python Version](./Recipes/Hashing/Hashing.ipynb)

#### HoldWintersForecaster Function in Vantage
Apply exponential smoothing on a combination of level, trend and seasonality components to make predictions.<br>
[Python Version](./Recipes/ClearScape_Functions/HoltWintersForecaster.ipynb)

#### Hospital Readmission using Teradata AutoML Functionality
Identify patients with a history of high hospital utilization, prescribed, or adjusted diabetes medications to derive predictions.<br>
[Python Version](./UseCases/Hospital_Readmission_AutoML/Hospital_Readmission_AutoML.ipynb)

#### Image2Matrix and Matrix2Image Functions in Vantage
Convert JPEG or PNG images to matrices, manipulate any element, then convert the matrices back into images.<br>
[Python Version](./Recipes/ClearScape_Functions/Image2matrixandMatrix2Image.ipynb)

#### In-Database XGBoost using ModelOps and Git for Financial Fraud Detection
Step through a traditional approach of building models to identify and predict customer churn and storing them in the database.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Financial_Fraud_Detection/FinFraud_EndtoEnd_ModelOps_GIT_Python_indb_XGB.ipynb)

#### InputValidator Function in Vantage
Validate data and identify series and matrices that have indiscrete data.<br>
[Python Version](./Recipes/ClearScape_Functions/InputValidator.ipynb)

#### Kmeans and KMeansPredict Functions in Vantage
Group a set of observations into k clusters in which each observation belongs to the cluster with the nearest mean.  Then predict a target class.<br>
[Python Version](./Recipes/ClearScape_Functions/KMeans_KMeansPredict.ipynb)

#### LineSpec Function in Vantage
Use this function to identify cycles that may be inherent in an input series.<br>
[Python Version](./Recipes/ClearScape_Functions/LineSpec.ipynb)

#### MAMean Function in Vantage
Use historical data to forecast activity 1 period ahead (t+1).<br>
[Python Version](./Recipes/ClearScape_Functions/MAMean.ipynb)

#### MatricMultiply Function in Vantage
Create a data series based on two matrixes.<br>
[Python Version](./Recipes/ClearScape_Functions/MatrixMultiply.ipynb)

#### Minfo Function in Vantage
Return a one row summary describing the data in a matrix.<br>
[Python Version](./Recipes/ClearScape_Functions/MInfo.ipynb)

#### MovingAverage Function in Vantage
Calculate the Cumulative Average of the quantities per Invoice in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/MovingAverage.ipynb)

#### NaiveBayesTextClassifierTrainer and NaiveBayesTextClassifierPredict Functions in Vantage
Calculate conditional probabilities.  Train a model with those values and use the predict function to classify documents into categories.<br>
[Python Version](./Recipes/ClearScape_Functions/NaiveBayesTextClassifierTrainerandPredict.ipynb)

#### NGramSplitter Function in Vantage
Tokenize an input stream of text and outputs n multigrams (called n-grams) based on the specified delimiter and reset parameters.<br>
[Python Version](./Recipes/ClearScape_Functions/NGramSplitter.ipynb)

#### NonLinearCombineFit and NonLinearCombineTransform Function in Vantage
Use the NonLinearCombineFit and NonLinearCombineTransform functions available in Vantage to create new feature columns in a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/NonLinearCombineFitandTransform.ipynb)

#### NPath Function in Vantage
Discover paths leading to Accounts being closed for 'Gold' customers.<br>
[Python Version](./Recipes/ClearScape_Functions/NPath.ipynb)

#### NumApply Function in Vantage
Apply a user-defined, numberic operator to a specific column or set of columns in a database table.<br>
[Python Version](./Recipes/ClearScape_Functions/NumApply.ipynb)

#### OneClassSVM and OneClassSVMPredict functions in Vantage
See how to use the OneClassSVM and OneClassSVMPredict functions .<br>
[Python Version](./Recipes/ClearScape_Functions/OneClassSVMandOneClassSVMPredict.ipynb)

#### OneHotEncodingFit and OneHotEncodingTransform in Vantage
Use these functions to analyze whether gender influences customer churn.<br>
[Python Version](./Recipes/ClearScape_Functions/OneHotEncodingFitandTransform.ipynb)

#### OrdinalEncodingFit and OrdinalEncodingTransform in Vantage
Analyze banking data to see if customer geography is influencing churn.<br>
[Python Version](./Recipes/ClearScape_Functions/OrdinalEncodingFitandTransform.ipynb)

#### Pack and Unpack Functions in Vantage
Store virtual columns from a dataframe in one physical column and then extract them back into multiple dataframe columns.<br>
[Python Version](./Recipes/ClearScape_Functions/Pack_Unpack.ipynb)

#### PolynomialFeaturesFit and PolynomialFeaturesTransform Functions in Vantage
Use these functions to find non-linear relationships between different customer attributes.<br>
[Python Version](./Recipes/ClearScape_Functions/PolynomialFeaturesFitandTransform.ipynb)

#### Portman Function in Vantage
Use the Portmanteau test to execute a series of test to determine whether the residuals can be classified as zeo mean, no serial correlation, or homoscedastic variance (white noise).<br>
[Python Version](./Recipes/ClearScape_Functions/Portman.ipynb)

#### PowerSpec Function in Vantage
Converts a time series to a frequency domain to facilitate frequency domain analysis.<br>
[Python Version](./Recipes/ClearScape_Functions/KNN.ipynb)

#### PowerTransform Function in Vantage
get forecast values for a heteroscedastic time series using PowerTransform function.<br>
[Python Version](./Recipes/ClearScape_Functions/PowerTransform.ipynb)

#### RandomProjectionMinComponents, RandomProjectionFit and RandomProjectionTransform Functions
Use these functions to perform dimensionality reduction of a dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/RandomProjectionFitandTransform_Python.ipynb)

#### RegressionEvaluator Function in Vantage
Compute metrics to evaluate and compare multiple models and summarizes how close predictions are to their expected values.<br>
[Python Version](./Recipes/ClearScape_Functions/RegressionEvaluator.ipynb)

#### ROC Function in Vantage
Give the function a set of prediction-actual pairs for a binary classification model, and it will calculate values for a range of discrimination thresholds.<br>
[Python Version](./Recipes/ClearScape_Functions/ROC.ipynb)

#### RoundColumns Function in Vantage
Convert the decimal precision of multiple columns to be the same.<br>
[Python Version](./Recipes/ClearScape_Functions/RoundColumns.ipynb)

#### RowNormalizeFit and RowNormalizeTransform Functions in Vantage
Discover how row-wise normalization can standardize financial metrics like CreditScore, Balance, and EstimatedSalary for better comparisons.<br>
[Python Version](./Recipes/ClearScape_Functions/RowNormalizeFitandTransform.ipynb)

#### ScaleFit and ScaleTransform Functions in Vantage
Standardize values to a comparable range, making them suitable for machine learning models without being influenced by original magnitudes.<br>
[Python Version](./Recipes/ClearScape_Functions/ScaleFitandTransform.ipynb)

#### SelectionCriteria Function in Vantage
Choose the best algorithm or model from a set of candidate models for a given dataset.<br>
[Python Version](./Recipes/ClearScape_Functions/SelectionCriteria.ipynb)

#### SentimentExtractor Function in Vantage
Search a customer's comments and evaluate the sentiments. Return a list of sentiment words along with their scores.<br>
[Python Version](./Recipes/ClearScape_Functions/SentimentExtractor.ipynb)

#### Sessionize Function in Vantage
Examine user behavior over a 24 hour time span using clickstream data.<br>
[Python Version](./Recipes/ClearScape_Functions/Sessionize.ipynb)

#### SignifPeriodicities Function in Vantage
Detecting significant periodicities in time series data is crucial for accurate forecasting, especially in industries such as retail or finance, where it impacts decision making.<br>
[Python Version](./Recipes/ClearScape_Functions/SignifPeriodicities.ipynb)

#### SignifResidmean Function in Vantage
Use a statistical test to determine if a passed-in residual series can be classified as being white noise.<br>
[Python Version](./Recipes/ClearScape_Functions/SignifResidmean.ipynb)

#### Silhouette Function in Vantage
Determines the similarity of an object to its cluster (cohesion) compared to other clusters (separation).<br>
[Python Version](./Recipes/ClearScape_Functions/Silhouette.ipynb)

#### SimpleExp Function in Vantage
Use simple exponential smoothing with time series data to generate forecast with minimal computations.<br>
[Python Version](./Recipes/ClearScape_Functions/SimpleExp.ipynb)

#### SInfo Function in Vantage
Return details about each instance of a series found in a table.<br>
[Python Version](./Recipes/ClearScape_Functions/SInfo.ipynb)

#### Solve Imbalance Class Problems with ClearScape Analytics
How to address imbalanced classes and build better models.<br>
[Python Version](./Recipes/Imbalanced_Data_Handling/Solve_Imbalance_Class_Problems.ipynb)

#### StrApply Function in Vantage
Manipulate a tring by applying a regular expression pattern as well as other standard string operators.<br>
[Python Version](./Recipes/ClearScape_Functions/StrApply.ipynb)

#### StringSimilarity Function in Vantage
Calculates the similarity between two strings, using the specified comparison method (jaro, cosine etc).<br>
[Python Version](./Recipes/ClearScape_Functions/StringSimilarity.ipynb)

#### SVM and SVMPredict Functions in Vantage.
Perform classification and regression analysis on datasets<br>
[Python Version](./Recipes/ClearScape_Functions/SVMandSVMPredict.ipynb)

#### TargetEncodingFit and TargetEncodingTransform Functions in Vantage
Apply Target Encoding to replace categorical values with statistically meaningful numerical representations based on the churn rate (Exited).<br>
[Python Version](./Recipes/ClearScape_Functions/TargetEncodingFitandTransform.ipynb)

#### Telco_Customer_Churn_AutoML_Approach.ipynb
Step through an automated approach of building models to identify and predict customer churn.<br>
[Python Version](./UseCases/Teradata_End_to_End_Demos/Telco_Customer_Churn/Telco_EndtoEnd_ModelOps_GIT_Python_indb_AutoML.ipynb)

#### TextParser Function in Vantage
Use this function to parse text by removing punctuation, stop words and then tokenize the remaining text.<br>
[Python Version](./Recipes/ClearScape_Functions/TextParser.ipynb)

#### TrackingOp Function in Vantage
Use geospatial coordinates to track an object's movement and calculate related metrics.<br>
[Python Version](./Recipes/ClearScape_Functions/TrackingOp.ipynb)

#### TrainTestSplit Function in Vantage
Divide a dataset for training and testing a model.<br>
[Python Version](./Recipes/ClearScape_Functions/TrainTestSplit.ipynb)

#### Variational AutoEncoders (VAE) in Generative AI
Define a model, define a loss function, train the model, generate new images and then enhance the quality.<br>
[Python Version](./Recipes/VAE/VAE_Python.ipynb)

#### VectorDistance Function in Vantage
Compute similarity or dissimilarity between two vectors in multi-dimensional space.<br>
[Python Version](./Recipes/ClearScape_Functions/VectorDistance.ipynb)

#### Video Analyzer with Google Gemini
Observe how Gemini 2.0 can be leveraged to generate details about events happening in videos and return those details as readable text.<br>
[Python Version](./Recipes/Video_Processing_using_Gemini/Video_processing_Gemini.ipynb)

#### WhitesGeneral Function in Vantage
Check for the presence of correlation among residual terms after running a regression.<br>
[Python Version](./Recipes/ClearScape_Functions/WhitesGeneral.ipynb)

#### WordEmbeddings Function in Vantage
Produce vectors for each piece of text and find the fimilarities between those pieces.<br>
[Python Version](./Recipes/ClearScape_Functions/WordEmbeddings.ipynb)

#### XGBoost and XGBoostPredict Functions in Vantage
Split a dataset for training and testing.  Then apply XGBoost and XGBoostPredict to generate better models.<br>
[Python Version](./Recipes/ClearScape_Functions/XGBoostandXGBPredict.ipynb)

#### ZTest Function in Vantage
Determine if two population means are different when the population standard deviation or variance is known.<br>
[Python Version](./Recipes/ClearScape_Functions/ZTest.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xVantage-Database-Functions'></a>
### Vantage Database Functions

#### TD GeoDataFrame to ESRI Conversion
Extract Teradata geospatial data and export it into widely-used formats such as ESRI shapefiles.<br>
[Python Version](./Recipes/TD_Geo_Esri/TD_Geo_Esri.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xModel-Pipelines'></a>
### Model Pipelines

#### Deploy a Hyper-Segmented Model Scikit Learn Pipeline
Deploy a hyper-segmented model created using the Python Scikit-Learn module and then load and run it in Vantage.<br>
[Python Version](./Recipes/HyperSegmented_Model_Pipelines/Deploy_HyperSegmented_Model_Pipeline.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>
<a id='xTeradata-Packages'></a>
### Teradata Packages

#### Interactive Npath Widget
Generate Sankey and Icicle charts from event logs.<br>
[Python Version](./Recipes/NPath_Visualizer_Widget/NPath_Visualizer_Widget.ipynb)

<a href='#toc'>**Back to Table of Contents**</a><br>

---

<footer style="padding:10px;background:#f9f9f9;border-bottom:3px solid #394851">©2023 Teradata. All Rights Reserved</footer>