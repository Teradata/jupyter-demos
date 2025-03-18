import warnings  # Added import for warnings
import pandas as pd

# teradata lib
from teradataml import *

# setup config
configure.byom_install_location = "mldb"
configure.val_install_location = "val"

# Suppress warnings
warnings.filterwarnings("ignore")
pd.options.display.max_rows = 5  # Corrected display setting


def deploy_propensity_model():
    print("Deploying propensity model to Vantage")
    # Read customer data from CSV file
    df = pd.read_csv("./data/customer360.csv")

    # Copy the DataFrame to SQL
    copy_to_sql(df, "customer360", if_exists="replace")

    # Create a DataFrame from the SQL table
    # cust_tdf = DataFrame("customer360")

    # Display the first 2 rows of the DataFrame
    # cust_tdf.head(2)

    # Load the PMML file into Vantage
    try:
        save_byom(
            model_id="mm_glm1",
            model_file="propensity_model_regressor_v1.pmml",
            table_name="mm_glm",
        )
        print("Model deployed to vantage!")
        return True

    except Exception as e:
        # if our model exists, delete and rewrite
        if str(e.args).find("TDML_2200") >= 1:
            delete_byom(model_id="mm_glm1", table_name="mm_glm")
            save_byom(
                model_id="mm_glm1",
                model_file="propensity_model_regressor_v1.pmml",
                table_name="mm_glm",
            )
            print("Model deployed to vantage!")
            return True
        else:
            raise


# Create a DataFrame from the SQL table
# DataFrame("mm_glm")


def setup_test_data():
    print("Setting up test data to vantage!")
    # Example input data for prediction
    example_input_data = pd.DataFrame(
        [
            {
                "Customer_ID": "C1001",
                "Age": 53,
                "Gender": "Male",
                "Income_Level": 50000,
                "Occupation": "Engineer",
                "Education_Level": "Bachelor",
                "Travel_Frequency": 2,
                "Destination": "Domestic",
                "Trip_Duration": 7,
                "Travel_Purpose": "Leisure",
                "Previous_Dental_Treatment": True,
                "General_Health_Status": "Poor",
                "Dental_Issue_History": True,
                "Dental_Visit_Frequency": 10,
                "Previous_Insurance_Policy": True,
                "Claims_History": 5,
                "Insurance_Duration": 5,
                "Online_Behavior": "High",
                "Marketing_Engagement": "High",
                "Social_Media_Activity": "Medium",
                "Credit_Score": 700,
                "Spending_Pattern": "Medium",
                "Payment_History": "Good",
            }
        ]
    )

    # Copy the example input data to SQL
    copy_to_sql(example_input_data, "df_test_user", if_exists="replace")
    return "Added test data to Vantage"


# # Create a DataFrame from the SQL table
# df_test = DataFrame("df_test")
# df_test


# # Retrieve the model from Vantage
# model_tdf = retrieve_byom("mm_glm1", table_name="mm_glm")

# # Run the PMMLPredict function in Vantage
# result = PMMLPredict(
#     modeldata=model_tdf,
#     newdata=df_test,
#     accumulate=["Customer_ID"],
#     overwrite_cached_models="*",
# )


# # Display the prediction result
# result.result
