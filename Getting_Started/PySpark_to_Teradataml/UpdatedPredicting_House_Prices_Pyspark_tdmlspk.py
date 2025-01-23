#!/usr/bin/env python
# coding: utf-8

# In[1]:


import getpass; import os
import pandas as pd
import numpy as np

from teradatamlspk import TeradataConf, TeradataContext
from teradatamlspk.sql import TeradataSession, SQLContext

from teradatamlspk.sql.types import *
import teradatamlspk.sql.functions as F


from teradatamlspk.ml.regression import LinearRegression


from teradatamlspk.ml.feature import VectorAssembler, StandardScaler
from teradatamlspk.ml.evaluation import RegressionEvaluator


# In[3]:


import seaborn as sns
import matplotlib.pyplot as plt


# In[4]:


# Visualization
from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"

pd.set_option('display.max_columns', 200)
pd.set_option('display.max_colwidth', 400)

from matplotlib import rcParams
sns.set(context='notebook', style='whitegrid', rc={'figure.figsize': (18,4)})
rcParams['figure.figsize'] = 18,4


# In[5]:


rnd_seed=23
np.random.seed=rnd_seed
np.random.set_state=rnd_seed


# In[6]:


spark = TeradataSession.builder.master("local[2]").appName("Linear-Regression-California-Housing").getOrCreate(host=getpass.getpass('Enter host: '), user=getpass.getpass('Enter user: '), password=getpass.getpass('Enter password: '))


# In[7]:


spark


# In[8]:


sc = spark.teradataContext
sc


# In[9]:


sqlContext = SQLContext(spark.teradataContext)
sqlContext


# In[10]:


#HOUSING_DATA = 'cal_housing.csv'


# In[11]:


# define the schema, corresponding to a line in the csv data file.
schema = StructType([
    StructField("long", FloatType(), nullable=True),
    StructField("lat", FloatType(), nullable=True),
    StructField("medage", FloatType(), nullable=True),
    StructField("totrooms", FloatType(), nullable=True),
    StructField("totbdrms", FloatType(), nullable=True),
    StructField("pop", FloatType(), nullable=True),
    StructField("houshlds", FloatType(), nullable=True),
    StructField("medinc", FloatType(), nullable=True),
    StructField("medhv", FloatType(), nullable=True)]
)


# In[12]:


# Load housing data
# housing_df = spark.read.csv(path=HOUSING_DATA, schema=schema, header=True).cache()
housing_df = spark.createDataFrame('"DEMO_HousingPrices"."Housing_Data"')


# In[13]:


housing_df.take(5)


# In[14]:


# Show first five rows
print("--------------------------------------------------------------------------------------------")
print("Sample 5 rows of the Dataset")
housing_df.show(5)


# In[15]:


# show the dataframe columns
housing_df.columns


# In[16]:


# show the schema of the dataframe
print("--------------------------------------------------------------------------------------------")
print("Schema of the dataframe")
housing_df.printSchema()


# In[17]:


# run a sample selection
print("--------------------------------------------------------------------------------------------")
print("Sample 10 rows showing the no of people in the block and the total bedrooms")
housing_df.select('pop','totbdrms').show(10)


# In[18]:


# group by housingmedianage and see the distribution
result_df = housing_df.groupBy("medage").count().sort("medage", ascending=False)


# In[19]:
print("--------------------------------------------------------------------------------------------")
print("Sample 10 rows showing count of properties by age of the house")
result_df.show(10)


# In[20]:


result_df.toPandas().plot.bar(x='medage',figsize=(14, 6),xlabel="Age of property", ylabel = "Count of properties", title = "Count of properties by Age")


# In[21]:

print("--------------------------------------------------------------------------------------------")
print("Summary of columns using various functions")
(housing_df.describe().select(
                    "summary",
                    F.round("medage", 4).alias("medage"),
                    F.round("totrooms", 4).alias("totrooms"),
                    F.round("totbdrms", 4).alias("totbdrms"),
                    F.round("pop", 4).alias("pop"),
                    F.round("houshlds", 4).alias("houshlds"),
                    F.round("medinc", 4).alias("medinc"),
                    F.round("medhv", 4).alias("medhv"))
                    .show())


# In[24]:


from teradatamlspk.sql.functions import col
# Adjust the values of `medianHouseValue`
housing_df = housing_df.withColumn("medhv", col("medhv")/100000)


# In[25]:
print("--------------------------------------------------------------------------------------------")
print("Sample 2 rows showing the adjusted value of the house")
housing_df.show(2)


# In[26]:


housing_df.columns


# In[27]:


housing_df = (housing_df.withColumn("rmsperhh", F.round(col("totrooms")/col("houshlds"), 2))
                       .withColumn("popperhh", F.round(col("pop")/col("houshlds"), 2))
                       .withColumn("bdrmsperrm", F.round(col("totbdrms")/col("totrooms"), 2)))


# In[28]:
print("--------------------------------------------------------------------------------------------")
print("Sample 5 rows showing the calculated columns: rooms per household, population per household and ratio of bedrooms to total rooms")
housing_df.show(5)


# In[29]:


# Re-order and select columns
housing_df = housing_df.select("medhv", 
                              "totbdrms", 
                              "pop", 
                              "houshlds", 
                              "medinc", 
                              "rmsperhh", 
                              "popperhh", 
                              "bdrmsperrm")


# In[30]:


featureCols = ["totbdrms", "pop", "houshlds", "medinc", "rmsperhh", "popperhh", "bdrmsperrm"]


# In[31]:


# put features into a feature vector column
assembler = VectorAssembler(inputCols=featureCols, outputCol="features") 


# In[32]:


assembled_df = assembler.transform(housing_df)


# In[33]:
print("--------------------------------------------------------------------------------------------")
print("Sample 10 rows showing the transformed dataset after using the VectorAssembler and transform on data")
assembled_df.show(10, truncate=False)


# In[34]:


# Initialize the `standardScaler`
standardScaler = StandardScaler(inputCol=["totbdrms", "pop", "houshlds", "medinc", "rmsperhh", "popperhh", "bdrmsperrm"], outputCol="features_scaled")


# In[35]:
from teradatamlspk.sql.functions import monotonically_increasing_id
assembled_df = assembled_df.withColumn("id", monotonically_increasing_id())
print("--------------------------------------------------------------------------------------------")
print("Sample 5 rows showing the dataset after adding the id column")
assembled_df.show(5)

# Fit the DataFrame to the scaler
scaled_df = standardScaler.fit(assembled_df).transform(assembled_df)


# In[36]:


# Inspect the result
print("--------------------------------------------------------------------------------------------")
print("Sample 10 rows showing the transformed dataset after using the StandardScalar and transform on data")
scaled_df.select(["totbdrms", "pop", "houshlds", "medinc", "rmsperhh", "popperhh", "bdrmsperrm"]).show(10, truncate=False)


# In[37]:


# Split the data into train and test sets
train_data, test_data = scaled_df.randomSplit([.8,.2], seed=rnd_seed)


# In[38]:


train_data.columns


# In[39]:


# Initialize `lr`
lr = (LinearRegression(featuresCol=["totbdrms", "pop", "houshlds", "medinc", "rmsperhh", "popperhh", "bdrmsperrm"], labelCol="medhv", predictionCol='predmedhv', 
                               maxIter=10, regParam=0.3, elasticNetParam=0.8, standardization=False))


# In[40]:


# Fit the data to the model
linearModel = lr.fit(train_data)


# In[41]:


# Coefficients for the model
linearModel.coefficients


# In[42]:


featureCols


# In[43]:


# Intercept for the model
linearModel.intercept


# In[44]:


# Generate predictions
predictions = linearModel.transform(test_data)


# In[45]:


# Extract the predictions and the "known" correct labels
predandlabels = predictions.select("predmedhv", "medhv")


# In[46]:
print("--------------------------------------------------------------------------------------------")
print("Sample 20 rows showing the predicted and actual value of the house")
predandlabels.show()


# In[47]:
print("--------------------------------------------------------------------------------------------")
print("Various Metrics of the Linear Model")
print("--------------------------------------------------------------------------------------------")
# Get the RMSE
print("RMSE: {0}".format(linearModel.summary.rootMeanSquaredError))


# In[48]:


print("MAE: {0}".format(linearModel.summary.meanAbsoluteError))


# In[49]:


# Get the R2
print("R2: {0}".format(linearModel.summary.r2))


# In[50]:


evaluator = RegressionEvaluator(predictionCol="predmedhv", labelCol='medhv', metricName='rmse')
print("RMSE: {0}".format(evaluator.evaluate(predandlabels)))


# In[51]:


evaluator = RegressionEvaluator(predictionCol="predmedhv", labelCol='medhv', metricName='mae')
print("MAE: {0}".format(evaluator.evaluate(predandlabels)))


# In[52]:


evaluator = RegressionEvaluator(predictionCol="predmedhv", labelCol='medhv', metricName='r2')
print("R2: {0}".format(evaluator.evaluate(predandlabels)))

print("--------------------------------------------------------------------------------------------")

# In[53]:


# mllib is old so the methods are available in rdd
#metrics = RegressionMetrics(predandlabels.rdd)


# In[54]:


#print("RMSE: {0}".format(metrics.rootMeanSquaredError))


# In[55]:


#print("MAE: {0}".format(metrics.meanAbsoluteError))


# In[56]:


#print("R2: {0}".format(metrics.r2))


# In[57]:


spark.stop()

