#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Standard library imports
import copy
import getpass

# Typing imports
from typing import List, Tuple, Optional, Union

# Data manipulation imports
import numpy as np
import pandas as pd
import teradataml as tdml
from teradataml import subplots as td_subplots

# Plotting imports
import matplotlib
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import plotly.graph_objects as go
import plotly.express as px
import plotly.graph_objs as go

# Machine learning imports
from imblearn.ensemble import EasyEnsembleClassifier, RUSBoostClassifier, BalancedBaggingClassifier, BalancedRandomForestClassifier
from sklearn.ensemble import BaggingClassifier, AdaBoostClassifier, RandomForestClassifier


# # EDA

# ## Cohens D

# In[ ]:


def get_cohens_d_stats(
    DF: tdml.DataFrame, 
    feature_names: List[str], 
    target_column_name: str
) -> tdml.DataFrame:
    """
    Calculate Cohen's d statistics for features based on a binary target column.

    Args:
        DF: A tdml DataFrame containing the data.
        feature_names: List of feature column names to calculate statistics for.
        target_column_name: The name of the binary target column for partitioning. Unique Values must be 0 (majority) and 1 (minority)

    Returns:
        A tdml DataFrame with means, standard deviations, sample sizes, and Cohen's d (absolute values).
    """
    
    # Perform univariate statistics on the given features, partitioned by the target column
    DF_unistats = tdml.UnivariateStatistics(
        newdata=DF,
        target_columns=feature_names,
        partition_columns=target_column_name,
        stats=["COUNT", "MEAN", "STD"],
        volatile=True
    ).result

    # Pivot the results to structure the output for calculations
    DF_unistats_pivot = DF_unistats.pivot(
        columns={DF_unistats[target_column_name]: [0, 1], 
                 DF_unistats.StatName: ["STANDARD DEVIATION", "MEAN", "COUNT"]},
        aggfuncs=DF_unistats.StatValue.sum(),
        returns=["std_0", "mean_0", "n_0", "std_1", "mean_1", "n_1"]
    )

    # Compute Cohen's d for each feature
    DF_unistats_pivot1 = DF_unistats_pivot.assign(
        cohens_d=(
            (DF_unistats_pivot.mean_1 - DF_unistats_pivot.mean_0)
            / (((DF_unistats_pivot.n_1 - 1) * DF_unistats_pivot.std_1 
                + (DF_unistats_pivot.n_0 - 1) * DF_unistats_pivot.std_0)
               / (DF_unistats_pivot.n_1 + DF_unistats_pivot.n_0 - 2)).sqrt()
        )
    )

    # Add the absolute value of Cohen's d
    DF_unistats_pivot2 = DF_unistats_pivot1.assign(
        abs_cohens_d=DF_unistats_pivot1.cohens_d.abs()
    )

    return DF_unistats_pivot2


# In[ ]:


def plot_grouped_boxplot(df: pd.DataFrame) -> matplotlib.figure.Figure:
    """
    Create a grouped boxplot using pre-calculated aggregate statistics for two classes.

    Args:
        df: A pandas DataFrame containing the columns ['Attribute', 'std_0', 'mean_0', 'n_0', 'std_1', 'mean_1', 'n_1'].

    Returns:
        A matplotlib Figure object containing the grouped boxplot.
    """
    
    # Create the stats for Class 0
    stats_0 = []
    for _, row in df.iterrows():
        stats_0.append({
            'mean': row['mean_0'],
            'med': row['mean_0'],  # Using mean for the median for simplicity
            'q1': row['mean_0'] - row['std_0'],  # Approximate Q1
            'q3': row['mean_0'] + row['std_0'],  # Approximate Q3
            'whislo': row['mean_0'] - 1.5 * row['std_0'],  # Whisker low
            'whishi': row['mean_0'] + 1.5 * row['std_0'],  # Whisker high
            'fliers': []  # No outliers in this case
        })

    # Create the stats for Class 1
    stats_1 = []
    for _, row in df.iterrows():
        stats_1.append({
            'mean': row['mean_1'],
            'med': row['mean_1'],  # Using mean for the median for simplicity
            'q1': row['mean_1'] - row['std_1'],  # Approximate Q1
            'q3': row['mean_1'] + row['std_1'],  # Approximate Q3
            'whislo': row['mean_1'] - 1.5 * row['std_1'],  # Whisker low
            'whishi': row['mean_1'] + 1.5 * row['std_1'],  # Whisker high
            'fliers': []  # No outliers in this case
        })

    # Create a figure and axis for the boxplots
    fig, ax = plt.subplots(figsize=(10, 6))

    # Plot for Class 0
    ax.bxp(
        stats_0, 
        positions=np.arange(len(stats_0)) * 2.0 - 0.4, 
        widths=0.6, 
        patch_artist=True, 
        boxprops=dict(facecolor="lightblue"), 
        showmeans=True
    )

    # Plot for Class 1
    ax.bxp(
        stats_1, 
        positions=np.arange(len(stats_1)) * 2.0 + 0.4, 
        widths=0.6, 
        patch_artist=True, 
        boxprops=dict(facecolor="lightgreen"), 
        showmeans=True
    )

    # Set x-ticks and labels
    ax.set_xticks(np.arange(len(stats_0)) * 2.0)
    ax.set_xticklabels(df['Attribute'], rotation=90)
    ax.set_ylabel('Values')
    ax.set_title('Grouped Boxplots using Aggregate Statistics')

    # Manually create the legend
    handles = [
        plt.Line2D([0], [0], color='lightblue', lw=4, label='Class 0'),
        plt.Line2D([0], [0], color='lightgreen', lw=4, label='Class 1')
    ]
    ax.legend(handles=handles, loc='best')

    plt.tight_layout()

    # Return the figure instead of plotting it immediately
    return fig


# ## Histogram

# In[ ]:


def plot_histograms(
    DF: tdml.DataFrame, 
    feature_column: str, 
    target: str,
    figsize: Tuple[int, int] = (800, 800)
) -> tdml.Figure:
    """
    Plot histograms of a feature column, grouped by a target (classlabel).

    Args:
        DF: A tdml DataFrame containing the data.
        feature_column: The feature column for which to plot histograms.
        target: The target (classlabel) column by which to group the histograms.
        figsize: Tuple specifying the size of the figure (default is (800, 800)).

    Returns:
        A tdml.Figure object containing the histograms for absolute and relative frequencies.
    """
    
    # Calculate histogram statistics using the SCOTT method, grouped by the target column
    DF_hist = tdml.Histogram(
        data=DF, 
        target_columns=[feature_column],
        method_type="SCOTT", 
        groupby_columns=[target], 
        volatile=True
    ).result

    # Pivot the data for plotting
    DF_hist_plot = (
        DF_hist.drop(columns=["MaxValue"])
        .pivot(
            columns={DF_hist[target]: [0, 1]},                  
            aggfuncs=[DF_hist.MinValue.min(),
                      DF_hist.CountOfValues.sum(),
                      DF_hist.Bin_Percent.sum()],
        )
    )

    # Create the subplots for absolute and relative frequency plots
    figure, axes = td_subplots(nrows=2, ncols=1)

    # Plot absolute frequencies for each class
    DF_hist_plot.plot(
        figure=figure,
        ax=axes[0],
        x=DF_hist_plot.min_minvalue_1,
        y=[DF_hist_plot.sum_countofvalues_0, DF_hist_plot.sum_countofvalues_1], 
        kind='bar', 
        color=['blue', 'red'],     
        legend=[f"{target} = 0", f"{target} = 1"],
        xlabel=feature_column,
        ylabel="Absolute Frequencies",
        figsize=figsize
    )

    # Plot relative frequencies (in percentage) for each class
    myplot = DF_hist_plot.plot(
        figure=figure,
        ax=axes[1],
        x=DF_hist_plot.min_minvalue_1,
        y=[DF_hist_plot.sum_bin_percent_0, DF_hist_plot.sum_bin_percent_1], 
        kind='bar', 
        color=['blue', 'red'], 
        legend=[f"{target} = 0", f"{target} = 1"],
        xlabel=feature_column,
        ylabel="Relative Frequencies in %",
        heading="Relative & Absolute Distribution of Values for Classlabels",
        figsize=figsize
    )

    # Return the figure object containing the plots
    return myplot


# # Model Evaluation Functions

# ## Classification Evaluator

# In[ ]:


def clean_classeval(eval_id: Optional[str] = "eval") -> None:
    """
    Cleans up classification evaluation tables (confusion and metrics) from the database.
    
    Args:
        eval_id: The identifier for the evaluation. Defaults to "eval".
                 This is used to construct table names for confusion and metrics.

    Returns:
        None
    """
    
    # Construct table names based on the provided eval_id
    confusion_table = eval_id + "_confusion"
    metrics_table = eval_id + "_metrics"

    # Attempt to drop the confusion table if it exists
    try:
        tdml.db_drop_table(confusion_table)
        print(f"{confusion_table} deleted.")
    except Exception as e:
        # Pass silently if the table doesn't exist, but can log or handle other exceptions
        pass

    # Attempt to drop the metrics table if it exists
    try:
        tdml.db_drop_table(metrics_table)
        print(f"{metrics_table} deleted.")
    except Exception as e:
        # Pass silently if the table doesn't exist, but can log or handle other exceptions
        pass


# In[ ]:


def save_classeval(
    DF_pred: tdml.DataFrame, 
    model_id: str, 
    key: str, 
    target: str, 
    eval_id: Optional[str] = "eval", # Table prefix 
    prediction: Optional[str] = "prediction"
) -> None:
    """
    Perform classification evaluation on the predicted data and save the results
    (confusion matrix and metrics) into database tables.

    Args:
        DF_pred: A tdml DataFrame containing the predictions and actual class labels.
        model_id: A string representing the ID of the model being evaluated.
        key: The column name representing the unique identifier of each row .
        target: The column name for the actual class labels.
        eval_id: A string used as the prefix for the confusion and metrics tables (default: "eval").
        prediction: The column name for the model predictions (default: "prediction").

    Returns:
        None
    """
    
    # Construct table names for storing the confusion matrix and metrics
    confusion_table = eval_id + "_confusion"
    metrics_table = eval_id + "_metrics"

    # Cast the prediction column to INTEGER type and create a ClassificationEvaluator object
    ClassEval_obj = tdml.ClassificationEvaluator(
        data=DF_pred.assign(pred_int=DF_pred[prediction].cast(tdml.INTEGER())), 
        observation_column=target, 
        prediction_column="pred_int", 
        labels=["0", "1"],  # Assuming binary classification with labels 0 and 1
        volatile=True
    )

    # Save the confusion matrix results to the database
    (ClassEval_obj.result
        .assign(model_id=model_id)  # Add model_id to the results
        .to_sql(confusion_table, if_exists="append", primary_index="model_id"))

    # Save the classification metrics to the database
    (ClassEval_obj.output_data
        .assign(model_id=model_id)  # Add model_id to the output data
        .to_sql(metrics_table, if_exists="append", primary_index="model_id"))


# In[ ]:


def get_classeval(eval_id: Optional[str] = "eval") -> Tuple[tdml.DataFrame, tdml.DataFrame]:
    """
    Retrieve the confusion matrix and metrics evaluation tables from the database.

    Args:
        eval_id: A string used as the prefix for the confusion and metrics tables (default: "eval").

    Returns:
        A tuple of two tdml DataFrames:
        - The first DataFrame is the confusion matrix.
        - The second DataFrame is the classification metrics.
    """
    
    # Construct table names based on the provided eval_id
    confusion_table = eval_id + "_confusion"
    metrics_table = eval_id + "_metrics"

    # Load the confusion matrix and metrics from the database into DataFrames
    DF_conf = tdml.DataFrame(confusion_table)
    DF_metrics = tdml.DataFrame(metrics_table)

    # Return the confusion matrix and metrics as a tuple of DataFrames
    return DF_conf, DF_metrics


# ## ROC AUC

# In[ ]:


def clean_roc(eval_id: Optional[str] = "eval") -> None:
    """
    Cleans up ROC and AUC tables from the database.

    Args:
        eval_id: A string used as the prefix for the ROC and AUC tables (default: "eval").

    Returns:
        None
    """
    
    # Construct table names based on the provided eval_id
    roc_table = eval_id + "_roc"
    auc_table = eval_id + "_auc"

    # Attempt to drop the ROC table
    try:
        tdml.db_drop_table(roc_table)
        print(f"{roc_table} deleted.")
    except Exception as e:
        # Pass silently if the table doesn't exist, but can log or handle other exceptions
        pass

    # Attempt to drop the AUC table
    try:
        tdml.db_drop_table(auc_table)
        print(f"{auc_table} deleted.")
    except Exception as e:
        # Pass silently if the table doesn't exist, but can log or handle other exceptions
        pass


# In[ ]:


def save_roc(
    DF_pred: tdml.DataFrame, 
    model_id: str, 
    key: Optional[str], 
    target: str, 
    probability: Optional[str] = "prob_1", 
    eval_id: Optional[str] = "eval"
) -> None:
    """
    Perform ROC analysis on predicted data and save the results (ROC and AUC) into database tables.

    Args:
        DF_pred: A tdml DataFrame containing the predicted probabilities and actual class labels.
        model_id: A string representing the ID of the model being evaluated.
        key: The column name representing the unique identifier of each row.
        target: The column name for the actual class labels.
        probability: The column name for the predicted probabilities of the positive class (default: "prob_1").
        eval_id: A string used as the prefix for the ROC and AUC tables (default: "eval").

    Returns:
        None
    """
    
    # Construct table names for storing ROC and AUC data
    roc_table = eval_id + "_roc"
    auc_table = eval_id + "_auc"

    # Create a ROC object to calculate ROC and AUC based on predictions
    ROC_obj = tdml.ROC(
        data=DF_pred,
        probability_column=probability,
        observation_column=target,
        positive_label=1,
        num_thresholds=100,  # Number of thresholds for calculating the ROC curve
        volatile=True
    )

    # Save the AUC results to the database
    (ROC_obj.result
        .assign(model_id=model_id)  # Add model_id to the results
        .to_sql(auc_table, if_exists="append", primary_index="model_id"))

    # Save the ROC curve data to the database
    (ROC_obj.output_data
        .assign(model_id=model_id)  # Add model_id to the ROC data
        .to_sql(roc_table, if_exists="append", primary_index="model_id"))


# In[ ]:


def get_rocauc(eval_id: Optional[str] = "eval") -> Tuple[tdml.DataFrame, tdml.DataFrame]:
    """
    Retrieve the ROC curve and AUC evaluation tables from the database.

    Args:
        eval_id: A string used as the prefix for the ROC and AUC tables (default: "eval").

    Returns:
        A tuple of two tdml DataFrames:
        - The first DataFrame is the ROC curve data.
        - The second DataFrame is the AUC results.
    """
    
    # Construct table names based on the provided eval_id
    roc_table = eval_id + "_roc"
    auc_table = eval_id + "_auc"

    # Load the ROC curve data and AUC results from the database into DataFrames
    DF_roc = tdml.DataFrame(roc_table)
    DF_auc = tdml.DataFrame(auc_table)

    # Return the ROC and AUC DataFrames as a tuple
    return DF_roc, DF_auc


# In[ ]:


def plot_roc_curves(
    DF_ROC: tdml.DataFrame, 
    model_list: Union[str, List[str]] = "all",  # "all" or list of model IDs
    highlight_model: Optional[str] = None
) -> go.Figure:
    """
    Plot ROC curves for multiple models from a tdml DataFrame containing ROC data.

    Args:
        DF_ROC: A tdml DataFrame containing the ROC curve data with columns ['model_id', 'fpr', 'tpr', 'threshold_value'].
        model_list: Either "all" to plot all models or a list of specific model IDs to plot.
        highlight_model: Optionally, a specific model ID to highlight in the plot (in red).

    Returns:
        A Plotly Figure object with the ROC curves.
    """
    
    # Convert the tdml DataFrame to pandas and reset index for easier manipulation
    df_roc = DF_ROC.to_pandas().reset_index()

    # If model_list is "all", get all unique model IDs from the data
    if model_list == "all":
        model_list = list(df_roc.model_id.unique())

    # Create a colormap and generate colors for each model
    cmap = plt.get_cmap('Dark2', lut=len(model_list))
    colors = [mcolors.to_hex(cmap(i)) for i in range(len(model_list))]

    # If highlight_model is specified and exists in model_list, remove it from the normal plot list
    if (highlight_model is not None) and (highlight_model in model_list):
        model_list.remove(highlight_model)

    # Create the ROC plot using Plotly
    fig = go.Figure()

    # Plot ROC curves for each model in model_list
    for i, model_id in enumerate(model_list):
        color = colors[i]
        this_df = df_roc.loc[df_roc.model_id == model_id].sort_values("fpr")
        fig.add_trace(go.Scatter(
            x=this_df['fpr'], y=this_df['tpr'], 
            hovertemplate='Threshold: %{text}<br>FPR: %{x}<br>TPR: %{y}',
            text=this_df['threshold_value'],
            mode='lines', name=model_id, 
            line=dict(color=color, shape='linear')
        ))

    # Plot the highlighted model (if provided) with a thicker red line
    if highlight_model is not None:
        color = "red"
        this_df = df_roc.loc[df_roc.model_id == highlight_model].sort_values("fpr")
        fig.add_trace(go.Scatter(
            x=this_df['fpr'], y=this_df['tpr'], 
            hovertemplate='Threshold: %{text}<br>FPR: %{x}<br>TPR: %{y}',
            text=this_df['threshold_value'],
            mode='lines', name=highlight_model, 
            line=dict(color=color, shape='linear', width=5)
        ))

    # Add a diagonal line representing random guessing (FPR = TPR)
    fig.add_trace(go.Scatter(
        x=[0, 1], y=[0, 1], 
        mode='lines', name='Random Guessing', 
        line=dict(color='black', dash='dash')
    ))

    # Update the layout of the plot (axis labels, scaling, size, legend)
    fig.update_layout(
        xaxis_title='False Positive Rate (FPR)', 
        yaxis_title='True Positive Rate (TPR)', 
        xaxis=dict(range=[0, 1], scaleanchor='y'), 
        yaxis=dict(range=[0, 1]),
        autosize=False,
        width=500,
        height=500,
        showlegend=True,
        legend=dict(x=1, y=0, xanchor='right', yanchor='bottom')  # Position legend at bottom-right
    )

    # Return the Plotly figure object
    return fig


# # Post Processing Methods

# ## cost sensitive tuning

# In[ ]:


def calculate_costs(
    DF_test: tdml.DataFrame, 
    outcome_tp: int, 
    outcome_fp: int, 
    outcome_tn: int, 
    outcome_fn: int, 
    eval_id: Optional[str] = "eval"
) -> tdml.DataFrame:
    """
    Calculate costs based on the ROC data and the provided test dataset.

    Args:
        DF_test: A tdml DataFrame containing the test data with actual class labels.
        outcome_tp: Profit/loss associated with a true positive (TP).
        outcome_fp: Profit/loss associated with a false positive (FP).
        outcome_tn: Profit/loss associated with a true negative (TN).
        outcome_fn: Profit/loss associated with a false negative (FN).
        eval_id: A string used as the prefix for the ROC table (default: "eval").

    Returns:
        A tdml DataFrame with calculated costs based on the ROC data.
    """
    
    # Get total number of samples and counts of class 0 and class 1
    n_total = DF_test.shape[0]
    n_0 = DF_test[DF_test.classlabel == 0].shape[0]
    n_1 = DF_test[DF_test.classlabel == 1].shape[0]

    # Load the ROC data from the evaluation table
    DF_ROC, _ = get_rocauc(eval_id)

    # Reconstruct absolute frequencies of TP, FP, TN, FN
    DF_cost = DF_ROC.assign(
        n_TP=(DF_ROC.tpr * n_1).round(0).cast(tdml.INTEGER()),
        n_FP=(DF_ROC.fpr * n_0).round(0).cast(tdml.INTEGER()),
        n_TN=((1.0 - DF_ROC.fpr) * n_0).round(0).cast(tdml.INTEGER()),
        n_FN=((1.0 - DF_ROC.tpr) * n_1).round(0).cast(tdml.INTEGER())
    )

    # Calculate the total outcome (cost/profit)
    DF_cost = DF_cost.assign(
        total_outcome=(
            outcome_tp * DF_cost.n_TP +
            outcome_fp * DF_cost.n_FP +
            outcome_tn * DF_cost.n_TN +
            outcome_fn * DF_cost.n_FN
        )
    )

    return DF_cost


# In[ ]:





# In[ ]:





# # imblearn methods - conversion to sklearn

# https://imbalanced-learn.org/stable/references/ensemble.html

# Boosting algorithms
#  - EasyEnsembleClassifier([n_estimators, ...]): Bag of balanced boosted learners also known as EasyEnsemble.
# - RUSBoostClassifier([estimator, ...]): Random under-sampling integrated in the learning of AdaBoost.
# 
# 
# 
# Bagging algorithms
# 
# - BalancedBaggingClassifier([estimator, ...]):  Bagging classifier with additional balancing. Let's do with GLM
# - BalancedRandomForestClassifier([...]): A balanced random forest classifier.
# 
# 

# In[ ]:


def compare_predictproba(
    X: np.ndarray, 
    fitted_imblearnclassifier: EasyEnsembleClassifier, 
    converted_sklearnclassifier: BaggingClassifier
) -> bool:
    """
    Compare the predict_proba outputs of the original fitted EasyEnsembleClassifier and the converted BaggingClassifier.

    Args:
        X: Input features as a numpy array (the same features for both models).
        fitted_imblearnclassifier: A fitted EasyEnsembleClassifier from imbalanced-learn.
        converted_sklearnclassifier: The converted BaggingClassifier from sklearn.

    Returns:
        A boolean indicating whether the predict_proba results are the same for both models.
    """
    
    # Get predict_proba results from both classifiers
    proba_imblearn = fitted_imblearnclassifier.predict_proba(X)
    proba_sklearn = converted_sklearnclassifier.predict_proba(X)
    
    # Check if both predict_proba outputs are the same (with a tolerance for floating-point precision)
    same_predictions = np.allclose(proba_imblearn, proba_sklearn, atol=1e-8)

    if same_predictions:
        print("Both models yield the same probability predictions.")
    else:
        print("The models do not yield the same probability predictions.")

    return same_predictions


# ## EasyEnsembleClassifier to sklearn.BaggingClassifier

# In[ ]:


def convert_EasyEnsembleClassifier_to_sklearnBaggingClassifier(
    fitted_easyensembleclassifier: EasyEnsembleClassifier
) -> BaggingClassifier:
    """
    Convert a fitted EasyEnsembleClassifier to a standard sklearn BaggingClassifier.
    This conversion removes the resampling step (RandomUnderSampler) since it only occurs during training,
    and BaggingClassifier can be used to export the model to ONNX.

    Args:
        fitted_easyensembleclassifier: A fitted EasyEnsembleClassifier instance.

    Returns:
        A BaggingClassifier with the same classifiers but without the resampling step.
    """
    
    # Ensure the EasyEnsembleClassifier is fitted
    if not hasattr(fitted_easyensembleclassifier, 'estimators_'):
        raise ValueError("The provided EasyEnsembleClassifier is not fitted.")
    
    # Create a new BaggingClassifier object
    model_bagging = BaggingClassifier()
    
    # Step 1: Copy all attributes from the EasyEnsembleClassifier except 'estimators_'
    for attr, value in fitted_easyensembleclassifier.__dict__.items():
        if attr != 'estimators_':  # Skip estimators for now; will handle them separately
            model_bagging.__dict__[attr] = value
    
    # Step 2: Strip the RandomUnderSampler and copy over only the classifier steps
    new_estimators = []
    for pipeline in fitted_easyensembleclassifier.estimators_:
        new_pipeline = copy.deepcopy(pipeline)
        # Keep only the classifier step (step[1] is assumed to be the classifier in the pipeline)
        new_pipeline.steps = [new_pipeline.steps[1]]  
        new_estimators.append(new_pipeline)
    
    # Assign the cleaned estimators (without the sampler) to the BaggingClassifier
    model_bagging.__dict__['estimators_'] = [estimator.named_steps['classifier'] for estimator in new_estimators]
    
    # Return the new BaggingClassifier object
    return model_bagging


# ## RUSBoostClassifier to sklearn.ensemble.AdaBoostClassifier

# https://github.com/scikit-learn-contrib/imbalanced-learn/blob/4d4cfd3118e22f645b53061d7208f1e93c28c72e/imblearn/ensemble/_weight_boosting.py#L32

# In[3]:


def convert_RUSBoostClassifier_to_sklearnAdaBoostClassifier(
    fitted_rusboostclassifier: RUSBoostClassifier
) -> AdaBoostClassifier:
    """
    Convert a fitted RUSBoostClassifier to a standard sklearn AdaBoostClassifier.
    This conversion removes the resampling (under-sampling) step, which is only relevant during training.
    
    Args:
        fitted_rusboostclassifier: A fitted RUSBoostClassifier instance.

    Returns:
        An AdaBoostClassifier with the same base estimators but without the resampling step.
    """
    
    # Ensure the RUSBoostClassifier is fitted
    if not hasattr(fitted_rusboostclassifier, 'estimators_'):
        raise ValueError("The provided RUSBoostClassifier is not fitted.")
    
    # Create a new AdaBoostClassifier object
    model_adaboost = AdaBoostClassifier()
    
    # Step 1: Copy all attributes from the RUSBoostClassifier except 'estimators_'
    for attr, value in fitted_rusboostclassifier.__dict__.items():
        if attr != 'estimators_':  # Skip estimators for now; will handle them separately
            model_adaboost.__dict__[attr] = value
    
    # Step 2: Copy over the estimators without any modifications (as there is no pipeline with a sampler)
    new_estimators = [copy.deepcopy(estimator) for estimator in fitted_rusboostclassifier.estimators_]
    
    # Assign the estimators to the AdaBoostClassifier
    model_adaboost.__dict__['estimators_'] = new_estimators
    
    # Return the new AdaBoostClassifier object
    return model_adaboost


# ## BalancedBaggingClassifier to sklearn.BaggingClassifier

# https://github.com/scikit-learn-contrib/imbalanced-learn/blob/4d4cfd3118e22f645b53061d7208f1e93c28c72e/imblearn/ensemble/_bagging.py#L48

# In[4]:


def convert_BalancedBaggingClassifier_to_sklearnBaggingClassifier(
    fitted_balancedbaggingclassifier: BalancedBaggingClassifier
) -> BaggingClassifier:
    """
    Convert a fitted BalancedBaggingClassifier to a standard sklearn BaggingClassifier.
    This conversion removes the resampling step (RandomUnderSampler) since it is only relevant during training.
    
    Args:
        fitted_balancedbaggingclassifier: A fitted BalancedBaggingClassifier instance.

    Returns:
        A BaggingClassifier with the same base estimators but without the resampling step.
    """
    
    # Ensure the BalancedBaggingClassifier is fitted
    if not hasattr(fitted_balancedbaggingclassifier, 'estimators_'):
        raise ValueError("The provided BalancedBaggingClassifier is not fitted.")
    
    # Create a new BaggingClassifier object
    model_bagging = BaggingClassifier()
    
    # Step 1: Copy all attributes from the BalancedBaggingClassifier except 'estimators_'
    for attr, value in fitted_balancedbaggingclassifier.__dict__.items():
        if attr != 'estimators_':  # Skip estimators for now; will handle them separately
            model_bagging.__dict__[attr] = value
    
    # Step 2: Remove the sampler and retain only the classifier step for each pipeline in the estimators
    new_estimators = []
    for pipeline in fitted_balancedbaggingclassifier.estimators_:
        new_pipeline = copy.deepcopy(pipeline)
        # Keep only the classifier step (step[1] in the pipeline)
        classifier = new_pipeline.named_steps['classifier']
        new_estimators.append(classifier)
    
    # Assign the cleaned estimators (without the sampler) to the BaggingClassifier
    model_bagging.__dict__['estimators_'] = new_estimators
    
    # Return the new BaggingClassifier object
    return model_bagging


# ## BalancedRandomForestClassifier to sklearn.ensemble.RandomForestClassifier

# In[5]:


def convert_BalancedRandomForestClassifier_to_sklearnRandomForestClassifier(
    fitted_balancedrandomforestclassifier: BalancedRandomForestClassifier
) -> RandomForestClassifier:
    """
    Convert a fitted BalancedRandomForestClassifier to a standard sklearn RandomForestClassifier.
    The conversion directly copies the base estimators as no sampling is involved at prediction time.
    
    Args:
        fitted_balancedrandomforestclassifier: A fitted BalancedRandomForestClassifier instance.

    Returns:
        A RandomForestClassifier with the same base estimators as the BalancedRandomForestClassifier.
    """
    
    # Ensure the BalancedRandomForestClassifier is fitted
    if not hasattr(fitted_balancedrandomforestclassifier, 'estimators_'):
        raise ValueError("The provided BalancedRandomForestClassifier is not fitted.")
    
    # Create a new RandomForestClassifier object
    model_randomforest = RandomForestClassifier()
    
    # Step 1: Copy all attributes from the BalancedRandomForestClassifier except 'estimators_'
    for attr, value in fitted_balancedrandomforestclassifier.__dict__.items():
        if attr != 'estimators_':  # Skip estimators for now; will handle them separately
            model_randomforest.__dict__[attr] = value
    
    # Step 2: Copy over the estimators directly, as they are standalone classifiers (e.g., Decision Trees)
    new_estimators = [copy.deepcopy(estimator) for estimator in fitted_balancedrandomforestclassifier.estimators_]
    
    # Assign the copied estimators to the RandomForestClassifier
    model_randomforest.__dict__['estimators_'] = new_estimators
    
    # Return the new RandomForestClassifier object
    return model_randomforest


# https://github.com/scikit-learn-contrib/imbalanced-learn/blob/4d4cfd3118e22f645b53061d7208f1e93c28c72e/imblearn/ensemble/_forest.py#L108C1-L108C86

# In[6]:


def convert_imblearn2sklearn(
    fitted_imblearn_model: Union[
        EasyEnsembleClassifier,
        RUSBoostClassifier,
        BalancedBaggingClassifier,
        BalancedRandomForestClassifier
    ]
) -> Union[BaggingClassifier, AdaBoostClassifier, RandomForestClassifier]:
    """
    Convert a fitted imbalanced-learn ensemble model to its corresponding sklearn ensemble model.

    Args:
        fitted_imblearn_model: A fitted instance of one of the following imblearn classifiers:
            - EasyEnsembleClassifier
            - RUSBoostClassifier
            - BalancedBaggingClassifier
            - BalancedRandomForestClassifier

    Returns:
        The corresponding sklearn model instance with the same base estimators but without resampling steps.

    Raises:
        ValueError: If the provided model is not of a supported imblearn type.
    """
    if isinstance(fitted_imblearn_model, EasyEnsembleClassifier):
        return convert_EasyEnsembleClassifier_to_sklearnBaggingClassifier(fitted_imblearn_model)
    elif isinstance(fitted_imblearn_model, RUSBoostClassifier):
        return convert_RUSBoostClassifier_to_sklearnAdaBoostClassifier(fitted_imblearn_model)
    elif isinstance(fitted_imblearn_model, BalancedBaggingClassifier):
        return convert_BalancedBaggingClassifier_to_sklearnBaggingClassifier(fitted_imblearn_model)
    elif isinstance(fitted_imblearn_model, BalancedRandomForestClassifier):
        return convert_BalancedRandomForestClassifier_to_sklearnRandomForestClassifier(fitted_imblearn_model)
    else:
        raise ValueError("The provided model is not a supported imblearn classifier. "
                         "Supported classifiers are: EasyEnsembleClassifier, RUSBoostClassifier, "
                         "BalancedBaggingClassifier, and BalancedRandomForestClassifier.")


# In[ ]:





# # generate the method plotly plot and publish it (not part of the blog post) 

# In[ ]:


def __generate_imbalancedclassmethods_plot(
    save_file: Optional[bool] = True, 
    filename: Optional[str] = "imbalancedclassmethod_plotly.html"
) -> go.Figure:
    """
    Generate an interactive scatter plot to visualize imbalanced class methods
    with their effort to productionize and workflow stage. Optionally, save the plot as an HTML file.

    Args:
        save_file: Boolean to specify whether the plot should be saved as an HTML file (default: True).
        filename: Name of the file where the plot will be saved (default: "imbalancedclassmethod_plotly.html").

    Returns:
        A Plotly Figure object containing the generated scatter plot.
    """
    
    # Load the dataset
    data = pd.read_csv('imbalanced_class_methods.csv', delimiter=';')
    
    # Add jitter to the 'Point in Time Numeric' column to avoid stacking of points
    np.random.seed(42)  # Ensures reproducibility
    data['Point in Time Numeric'] = data['Point in Time Numeric'] + np.random.uniform(-0.1, 0.1, size=len(data))
    
    # Rename the 'Point in Time' column to be more descriptive
    data = data.rename(columns={'Point in Time': 'Stage in Workflow'})
    
    # Create hover information in HTML format for better display
    data['hover_text'] = '<b>' + data['Method'] + '</b><br>' + data['Description']
    
    # Generate the scatter plot using Plotly Express
    fig = px.scatter(
        data,
        x='Point in Time Numeric',       # Jittered point in time
        y='Effort Numeric',              # Effort required to productionize
        text='Method',                   # Method name displayed on the plot
        color='Effort Numeric',          # Color continuum based on effort level
        color_continuous_scale=['yellow', 'orange', 'red'],  # Gradient from yellow to red
        symbol='Stage in Workflow',      # Shape based on workflow stage
        size_max=10,                     # Max size for method name text
        hover_name='hover_text',         # Custom hover text
        title="Imbalanced Class Methods: Effort vs. Stage in Workflow",
        labels={
            "Point in Time Numeric": "Stage in Workflow",
            "Effort Numeric": "Effort to Productionize (1 = Low, 10 = High)",
            "Stage in Workflow": "Stage in Workflow"
        }
    )
    
    # Customize the hover template to show only the hover_text
    fig.update_traces(hovertemplate='%{hovertext}<extra></extra>')
    
    # Increase marker size and adjust the layout for better readability
    fig.update_traces(marker=dict(size=15), textposition='top center')
    
    # Customize the x-axis labels and remove numeric tick values
    fig.update_layout(
        xaxis_title="Stage in Workflow",
        yaxis_title="Effort to Productionize (1 = Low, 10 = High)",
        width=1000,  # Increase plot width
        height=600,  # Increase plot height
        xaxis=dict(
            range=[0, 4],  # Set x-axis range from 0 to 4
            tickvals=[1, 2, 3],  # Custom tick positions
            ticktext=["Data Preprocessing", "Modeling", "Post-Processing"]  # Custom labels
        ),
        yaxis=dict(
            range=[0, 11],  
        ),
        hovermode='closest',  # Highlight the nearest point on hover
        showlegend=False  # Remove legend for color and shape
    )
    
    # Remove the color scale from the plot
    fig.update_coloraxes(showscale=False)
    
    # Optionally save the plot as an HTML file
    if save_file:
        fig.write_html(filename)
        print(f"Plot saved as {filename}.")
    
    return fig


# In[ ]:


def __publish_imbalancedclassmethods_plot(fig: go.Figure) -> None:
    """
    Publish a Plotly figure to Chart Studio for embedding and sharing.
    
    Args:
        fig: A Plotly Figure object representing the imbalanced class methods plot.
    
    Returns:
        None
    """
    try:
        import chart_studio
        import chart_studio.plotly as py
        import chart_studio.tools as tls
    except ImportError:
        print("""
        chart_studio is not installed. Please install it using `pip install chart-studio`.
        You also need to create an account at https://chart-studio.plotly.com/
        and generate an API key for authentication.

        The plot was NOT published. Please ensure the required steps are completed.
        """)
        return
    
    # Get username and API key securely using getpass
    username = getpass.getpass("Enter your Chart Studio username: ")
    apikey = getpass.getpass("Enter your Chart Studio API key: ")
    
    # Set the credentials for Chart Studio
    chart_studio.tools.set_credentials_file(username=username, api_key=apikey)
    
    # Publish the plot to Chart Studio
    try:
        import chart_studio.plotly as py
        py.plot(fig, filename="imbalanced_class_methods", auto_open=True, sharing="public")
        print("Publishing successful! You can now embed the plot in Medium or other platforms.")
    except Exception as e:
        print(f"An error occurred during publishing: {e}")
        print("The plot was NOT published.")


# In[ ]:




