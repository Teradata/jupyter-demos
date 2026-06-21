#!/usr/bin/python3

from teradataml import *
import pandas as pd
from time import sleep
from IPython.display import clear_output, display as ipydisplay


def check_and_connect(host, username, password, compute_group):
    # check for existing connection
    if not get_context():
        try:
            eng = create_context(host=host, username=username, password=password)
            execute_sql(f"SET SESSION COMPUTE GROUP {compute_group};")
        except Exception as e:
            if "Failure sending Start Request message" in str(e):
                eng = create_context(host=host, username=username, password=password)
                execute_sql(f"SET SESSION COMPUTE GROUP {compute_group};")
                pass
            else:
                raise  # OperationalError from None
    else:  # check for existing connection
        try:
            eng = create_context(host=host, username=username, password=password)
            execute_sql(f"SET SESSION COMPUTE GROUP {compute_group};")
        except Exception as e:
            if "Failure sending Start Request message" in str(e):
                eng = create_context(host=host, username=username, password=password)
                execute_sql(f"SET SESSION COMPUTE GROUP {compute_group};")
                pass
            else:
                raise

    return eng


def check_cluster_start(compute_group):
    try:
        df_status = DataFrame.from_query(
            f"""SELECT * FROM DBC.ComputeStatusV WHERE ComputeGroupName = '{compute_group}';"""
        ).to_pandas()
        ipydisplay(df_status)
        l_status = df_status["CurrentState"].to_list()
        l_req = df_status["LastReqState"].to_list()
        wt = "N"
        if any("NOTDEPLOYED" in x for x in l_status) | any(
            "DEPLOYING" in x for x in l_status
        ):
            print("GPU Cluster Deploying")
            wt = input("Wait for Cluster? y/N? ")
        elif any("ACTIVE" in x for x in l_status):
            print("GPU Cluster Available")
        elif any("STARTING" in x for x in l_status) | any("RESUME" in x for x in l_req):
            print("GPU Cluster Starting")
            wt = input("Wait for Cluster? y/N? ")
        else:
            print("No GPU Cluster Available")
            print("Enter Number of the Cluster to start, 0 to exit:")
            i = 0
            l_clusters = df_status.groupby("ComputeProfileName").count().index.to_list()
            for n in l_clusters:
                i += 1
                print(f"{str(i)}.  {n}")
            sel = input("Enter your selection: ")
            if sel != "0":
                wt = input("Wait for Cluster? y/N? ")
                execute_sql(
                    f"RESUME COMPUTE FOR COMPUTE PROFILE {l_clusters[i-1]} IN {compute_group};"
                )

        if wt == "y":
            while True:
                df = DataFrame.from_query(
                    f"""SELECT * FROM DBC.ComputeStatusV WHERE ComputeGroupName = '{compute_group}' ;"""
                ).to_pandas()
                clear_output()
                ipydisplay(df)
                if any("ACTIVE" in x for x in df["CurrentState"].to_list()):
                    break
                sleep(5)
    except Exception as e:
        raise
        return e

    return True


def check_cluster_stop(compute_group):
    try:
        df_status = DataFrame.from_query(
            f"""SELECT * FROM DBC.ComputeStatusV WHERE ComputeGroupName = '{compute_group}' ;"""
        ).to_pandas()
        ipydisplay(df_status)
        l_status = df_status["CurrentState"].to_list()
        l_req = df_status["LastReqState"].to_list()

        if (
            any("ACTIVE" in x for x in l_status)
            | any("STARTING" in x for x in l_status)
            | any("RESUME" in x for x in l_req)
        ) & any("SUSPEND" not in x for x in l_req):
            print("GPU Cluster Active or Resuming")
            print("Enter Number of the Cluster to shut down, 0 to exit:")
            i = 0
            l_clusters = df_status.groupby("ComputeProfileName").count().index.to_list()
            for n in l_clusters:
                i += 1
                print(f"{str(i)}.  {n}")
            sel = input("Enter your selection: ")
            if sel != "0":
                execute_sql(
                    f"SUSPEND COMPUTE FOR COMPUTE PROFILE {l_clusters[i-1]} IN {compute_group};"
                )
                df = DataFrame.from_query(
                    f"""SELECT * FROM DBC.ComputeStatusV WHERE ComputeGroupName = '{compute_group}' ;"""
                ).to_pandas()
                clear_output()
                ipydisplay(df)
        else:
            print("Cluster Suspended or Suspend request already submitted.")

        return True

    except Exception as e:
        raise
        return e
