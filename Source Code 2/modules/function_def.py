# IMPORT PACKAGE AND LIBRARIES
# -----------------------------------
import numpy as np
import pandas as pd
import random as rd
from tabulate import tabulate as tb
import os


# USER DEFINE FUNCTION
# -----------------------------------
def print_df(df_name: str, df: pd.DataFrame):
    """
    Prettier Tabular Output.

    Args:
        df_name: str                    = Name of The Dataframe
        df: pandas.core.frame.DataFrame = The Dataframe that will be print out.
    """
    print(">> " + df_name)
    print(tb(df, headers="keys", tablefmt="psql"))
    print("")


def clearscreen():
    """
    Clears the terminal screen.

    Uses the appropriate command depending on the operating system:
    - 'cls' for Windows
    - 'clear' for Unix/Linux/Mac
    """
    os.system("cls" if os.name == "nt" else "clear")


def clearing_df(df: pd.DataFrame):
    df = df.copy()

    # Replace all "None", blank, "NaN" value
    df = df.fillna("-")

    return df


def PSO_exe(
    Storage: list,
    X_min: float,
    X_max: float,
):
    # Ungroup Storage
    X_df = Storage[0]
