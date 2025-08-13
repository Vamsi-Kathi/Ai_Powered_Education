from flask import Blueprint, request, jsonify
import mysql.connector
import pandas as pd
import pickle
import traceback  # Helps debug errors

performance_blueprint = Blueprint("performance", __name__)

# Establish database connection
def get_database_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="1234",  # Update this with your actual MySQL password
        database="test"
    )

# Load the trained model once (Optimization)
try:
    with open('performance_model.pkl', 'rb') as model_file:
        model = pickle.load(model_file)
except Exception as e:
    print(f"❌ ERROR: Failed to load the model - {str(e)}")
    model = None  # Prevent crashes

# Predict performance based on attendance and marks
def predict_performance(attendance_percentage, marks):
    try:
        if model is None:
            return "Error: Model not loaded"

        input_data = pd.DataFrame([[attendance_percentage, marks]], columns=['attendance_percentage', 'marks'])
        prediction = model.predict(input_data)[0]
        return "Good" if prediction == 1 else "Needs Improvement"
    except Exception as e:
        print("❌ ERROR during prediction:", str(e))
        return "Error: Prediction failed"

@performance_blueprint.route("/predict_performance", methods=["POST"])
def predict_performance_api():
    try:
        data = request.get_json()
        print("📌 Received data:", data)

        roll_number = data.get("roll_number")
        if not roll_number:
            return jsonify({"error": "Roll number is required"}), 400

        connection = get_database_connection()
        cursor = connection.cursor()

        query = """
    SELECT 
        IFNULL((SELECT COUNT(*) FROM attendance WHERE roll_number = %s AND status = 'Present') * 100.0 /
        NULLIF((SELECT COUNT(*) FROM attendance WHERE roll_number = %s), 0), 0) AS attendance_percentage,
        AVG(m.marks) AS average_marks
    FROM students s
    LEFT JOIN marks m ON s.roll_number = m.student_id
    WHERE s.roll_number = %s
    GROUP BY s.roll_number
"""


        cursor.execute(query, (roll_number, roll_number, roll_number))
        result = cursor.fetchone()
        cursor.close()
        connection.close()
        print("📌 Query result:", result)

        if result and all(result):
            attendance_percentage, marks = result
            prediction = predict_performance(attendance_percentage, marks)
            return jsonify({
                "roll_number": roll_number,
                "attendance_percentage": round(attendance_percentage, 2) if attendance_percentage is not None else "N/A",
                "average_marks": round(marks, 2) if marks is not None else "N/A",
                "performance_category": prediction
            })
        else:
            return jsonify({"error": "No data found for the given Roll Number."}), 404

    except Exception as e:
        print("❌ ERROR:", str(e))
        traceback.print_exc()
        return jsonify({"error": "Internal Server Error"}), 500
