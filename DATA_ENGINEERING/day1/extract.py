import pandas as pd
import os

def extract_data():
    path = os.path.join(os.path.dirname(__file__), "data.csv")
    df = pd.read_csv(path)
    return df