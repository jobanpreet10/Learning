

def transform_data(df):
    df['salary'] = df['salary']*1.10
    print("Data Transformed")
    return df
