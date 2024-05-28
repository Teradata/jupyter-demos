#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import pandas as pd
import numpy as np

from pyspark import SparkConf, SparkContext
from pyspark.sql import SparkSession, SQLContext

from pyspark.sql.types import *
import pyspark.sql.functions as F


from pyspark.ml.regression import LinearRegression
from pyspark.mllib.evaluation import RegressionMetrics

from pyspark.ml.feature import VectorAssembler, StandardScaler
from pyspark.ml.evaluation import RegressionEvaluator


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


spark = SparkSession.builder.master("local[2]").appName("Linear-Regression-California-Housing").getOrCreate()


# In[7]:


spark


# In[8]:


sc = spark.sparkContext
sc


# In[9]:


sqlContext = SQLContext(spark.sparkContext)
sqlContext


# In[10]:


HOUSING_DATA = 'cal_housing.csv'


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
housing_df = spark.read.csv(path=HOUSING_DATA, schema=schema, header=True).cache()


# In[13]:


housing_df.take(5)


# In[14]:


# Show first five rows
housing_df.show(5)


# In[15]:


# show the dataframe columns
housing_df.columns


# In[16]:


# show the schema of the dataframe
housing_df.printSchema()


# In[17]:


# run a sample selection
housing_df.select('pop','totbdrms').show(10)


# In[18]:


# group by housingmedianage and see the distribution
result_df = housing_df.groupBy("medage").count().sort("medage", ascending=False)


# In[19]:


result_df.show(10)


# In[20]:


result_df.toPandas().plot.bar(x='medage',figsize=(14, 6))


# In[21]:


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


from pyspark.sql.functions import col
# Adjust the values of `medianHouseValue`
housing_df = housing_df.withColumn("medhv", col("medhv")/100000)


# In[25]:


housing_df.show(2)


# In[26]:


housing_df.columns


# In[27]:


housing_df = (housing_df.withColumn("rmsperhh", F.round(col("totrooms")/col("houshlds"), 2))
                       .withColumn("popperhh", F.round(col("pop")/col("houshlds"), 2))
                       .withColumn("bdrmsperrm", F.round(col("totbdrms")/col("totrooms"), 2)))


# In[28]:


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


assembled_df.show(10, truncate=False)


# In[34]:


# Initialize the `standardScaler`
standardScaler = StandardScaler(inputCol="features", outputCol="features_scaled")


# In[35]:


# Fit the DataFrame to the scaler
scaled_df = standardScaler.fit(assembled_df).transform(assembled_df)


# In[36]:


# Inspect the result
scaled_df.select("features", "features_scaled").show(10, truncate=False)


# In[37]:


# Split the data into train and test sets
train_data, test_data = scaled_df.randomSplit([.8,.2], seed=rnd_seed)


# In[38]:


train_data.columns


# In[39]:


# Initialize `lr`
lr = (LinearRegression(featuresCol='features_scaled', labelCol="medhv", predictionCol='predmedhv', 
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


predandlabels.show()


# In[47]:


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


# In[53]:


# mllib is old so the methods are available in rdd
metrics = RegressionMetrics(predandlabels.rdd)


# In[54]:


print("RMSE: {0}".format(metrics.rootMeanSquaredError))


# In[55]:


print("MAE: {0}".format(metrics.meanAbsoluteError))


# In[56]:


print("R2: {0}".format(metrics.r2))


# In[57]:


spark.stop()

