import pickle
import pandas as pd
import os
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
from fetch_data import fetch_student_data  # Import function to fetch data

# Ensure 'models' directory exists
if not os.path.exists('models'):
    os.makedirs('models')

# Fetch student data
df = fetch_student_data()

# Check if the data is empty and handle the case
if df.empty:
    print("Error: No data found. Cannot train the model.")
    exit()

# Drop rows with missing values
df.dropna(inplace=True)

# Define labels based on average marks
def categorize_performance(marks):
    if marks >= 75:
        return "Good"
    elif marks >= 50:
        return "Average"
    else:
        return "Poor"

# Apply categorization function to create the 'performance_category' column
df["performance_category"] = df["average_marks"].apply(categorize_performance)

# Define input (X) and output (y)
X = df[['attendance_percentage', 'average_marks']]
y = df['performance_category']

# Check if the data is sufficient for training
if X.shape[0] < 2:  # Make sure there's enough data
    print("Error: Not enough data to train the model.")
    exit()

# Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train a Decision Tree model
model = DecisionTreeClassifier()
model.fit(X_train, y_train)

# Save the trained model to a file
with open('models/performance_model.pkl', 'wb') as file:
    pickle.dump(model, file)

# Evaluate the model's performance
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"✅ AI Model trained and saved as 'performance_model.pkl'!")
print(f"Model Accuracy: {accuracy * 100:.2f}%")
