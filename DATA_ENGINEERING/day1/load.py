import os

def load_data(df):
    path = os.path.join(os.path.dirname(__file__), "output.csv")
    df.to_csv(path, index=False)

    print("Data uploaded to", path)