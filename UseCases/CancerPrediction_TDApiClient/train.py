import pandas as pd
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
import os
from sklearn.decomposition import PCA
from google.cloud import storage
from google.cloud.storage.blob import Blob
import joblib
from glob import glob
from nyoka import skl_to_pmml


MODEL_DIR = os.getenv("AIP_MODEL_DIR")
TRAINING_DATA_PATH = os.getenv("AIP_TRAINING_DATA_URI")
PROJECT_ID = os.getenv("CLOUD_ML_PROJECT_ID")

features = ["id","radius_mean","texture_mean","perimeter_mean","area_mean","smoothness_mean",         
                                       "compactness_mean","concavity_mean","concave_points_mean","symmetry_mean",    
                                       "fractal_dimension_mean","radius_se","texture_se","perimeter_se","area_se",
                                       "smoothness_se","compactness_se","concavity_se","concave_points_se",
                                       "symmetry_se","fractal_dimension_se","radius_worst","texture_worst",
                                       "perimeter_worst","area_worst","smoothness_worst","compactness_worst",
                                       "concavity_worst","concave_points_worst","symmetry_worst",
                                       "fractal_dimension_worst"]
target = "diagnosis"

data = pd.concat(
    [pd.read_csv(f) for f in glob(f"/gcs/{TRAINING_DATA_PATH[5:]}")],
    axis=0,
    ignore_index=True
    )
X = data[features]
y = data[target]

pipeline_obj = Pipeline([
    ("scaler", StandardScaler()),
    ("pca", PCA(n_components=3)),
    ("rfc", RandomForestClassifier(n_estimators=100))
])

pipeline_obj.fit(X, y)

# Export model as joblib to Cloud Storage
JOBLIB_FILENAME = 'model.joblib'
joblib.dump(pipeline_obj, JOBLIB_FILENAME)
blob = Blob.from_string(
    MODEL_DIR + JOBLIB_FILENAME,
    client=storage.Client(project=PROJECT_ID))
blob.upload_from_filename(JOBLIB_FILENAME)

# Export as PMML to Cloud Storage
PMML_FILENAME = "model.pmml"
skl_to_pmml(pipeline_obj, features, target, PMML_FILENAME)
blob = Blob.from_string(
    MODEL_DIR + PMML_FILENAME,
    client=storage.Client(project=PROJECT_ID))
blob.upload_from_filename(PMML_FILENAME)