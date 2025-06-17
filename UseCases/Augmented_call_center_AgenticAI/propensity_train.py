import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error, r2_score
from sklearn2pmml import PMMLPipeline, sklearn2pmml

# Load the updated dataset
df = pd.read_csv("propensity_model_data_with_propensity_score_v1.csv")

# Data Cleaning
for column in df.select_dtypes(include=[np.number]).columns:
    df[column].fillna(df[column].median(), inplace=True)

for column in df.select_dtypes(include=[object]).columns:
    df[column].fillna(df[column].mode()[0], inplace=True)

# Feature Engineering
categorical_features = df.select_dtypes(include=[object]).columns.tolist()
numerical_features = df.select_dtypes(include=[np.number]).columns.tolist()
numerical_features.remove("Customer_ID")
numerical_features.remove("Propensity_Score")

preprocessor = ColumnTransformer(
    transformers=[
        ("num", StandardScaler(), numerical_features),
        ("cat", OneHotEncoder(), categorical_features),
    ]
)

# Define the model pipeline
pipeline = PMMLPipeline(
    steps=[
        ("preprocessor", preprocessor),
        ("regressor", RandomForestRegressor(n_estimators=100, random_state=42)),
    ]
)

# Split the data into training and testing sets
X = df.drop(columns=["Customer_ID", "Propensity_Score"])
y = df["Propensity_Score"]

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

# Train the model
pipeline.fit(X_train, y_train)

# Evaluate the model's performance
y_pred = pipeline.predict(X_test)
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f"Model Performance:\nMean Squared Error: {mse}\nR2 Score: {r2}")

# Export the model to PMML
sklearn2pmml(pipeline, "propensity_model_regressor_v1.pmml")

print("Model has been trained and exported as propensity_model_regressor_v1.pmml")
