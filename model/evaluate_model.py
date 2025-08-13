import pickle
from sklearn.metrics import accuracy_score
from fetch_data import fetch_student_data
from preprocess import preprocess_data

# Fetch and preprocess student data
df = fetch_student_data()
df = preprocess_data(df)

# Load the trained model
with open('model/performance_model.pkl', 'rb') as file:
    model = pickle.load(file)

# Define input (X) and output (y)
X = df[['attendance_percentage', 'average_marks']]
y = df['performance_category']

# Split data into training and testing sets
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Predict performance categories using the trained model
y_pred = model.predict(X_test)

# Evaluate the model's accuracy
accuracy = accuracy_score(y_test, y_pred)
print(f"Model Accuracy: {accuracy * 100:.2f}%")
