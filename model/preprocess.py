def preprocess_data(df):
    # Drop missing values
    df.dropna(inplace=True)
    
    # Ensure the 'average_marks' column exists
    if 'average_marks' not in df.columns:
        raise ValueError("The 'average_marks' column is missing in the dataset.")
    
    # Check for outliers or anomalies in the data (you can define a custom method here)
    # For example, remove students with extremely low attendance or marks:
    df = df[(df['attendance_percentage'] >= 0) & (df['attendance_percentage'] <= 100)]
    df = df[(df['average_marks'] >= 0) & (df['average_marks'] <= 100)]
    
    return df
