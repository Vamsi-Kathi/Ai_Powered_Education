from flask import Flask, redirect, url_for, session, request, render_template, jsonify
from controllers.auth_controller import auth_blueprint
from controllers.dashboard_controller import dashboard_blueprint
from controllers.career_guidance_controller import career_blueprint
from controllers.assignments_controller import assignments_blueprint
from controllers.health_controller import health_blueprint
from controllers.polls_controller import polls_blueprint
from controllers.events_controller import events_blueprint
from controllers.gaming_controller import gaming_blueprint
from controllers.semwise_controller import semwise_blueprint
from controllers.attendance_controller import attendance_blueprint
from controllers.performance_controller import performance_blueprint, predict_performance
from controllers.manners_controller import manners_blueprint
from extensions import mysql

# Initialize Flask app with static folder
app = Flask(__name__, static_folder='static')  # This ensures Flask can serve static files like JS, CSS, etc.

# Configure MySQL
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''  # No password
app.config['MYSQL_DB'] = 'test'  # Your database name

app.secret_key = 'your_secret_key'  # Required for session management

# Register Blueprints
app.register_blueprint(auth_blueprint, url_prefix='/auth')
app.register_blueprint(dashboard_blueprint, url_prefix='/dashboard')
app.register_blueprint(career_blueprint)
app.register_blueprint(health_blueprint)
app.register_blueprint(polls_blueprint)
app.register_blueprint(events_blueprint)
app.register_blueprint(gaming_blueprint)
app.register_blueprint(semwise_blueprint)
app.register_blueprint(attendance_blueprint)
app.register_blueprint(manners_blueprint)
app.register_blueprint(assignments_blueprint)
app.register_blueprint(performance_blueprint, url_prefix='/performance')

# Force redirect to the registration page when opening the server
@app.route('/')
def home():
    if 'user_id' in session:  # Check if user is logged in
        return redirect(url_for('dashboard.dashboard_home'))  # If logged in, go to dashboard
    return redirect(url_for('auth.register'))  # Otherwise, go to register page first

# AI Performance Prediction Route (Fixed)
# Route to fetch student performance based on roll number (GET request)
@app.route('/performance/predict_performance', methods=['POST'])
def predict_student_performance():
    try:
        data = request.json
        roll_number = data.get('roll_number')

        if not roll_number:
            return jsonify({"error": "Roll number is required"}), 400

        # Use mysql.connection instead of mysql.connect()
        conn = mysql.connection
        cursor = conn.cursor()

        cursor.execute("""
            SELECT
                COALESCE(
                    (SELECT COUNT(*) FROM attendance WHERE roll_number = %s AND status = 'Present') * 100.0 / 
                    NULLIF((SELECT COUNT(*) FROM attendance WHERE roll_number = %s), 0), 
                    0
                ) AS attendance_percentage,
                COALESCE(AVG(m.marks), 0) AS average_marks
            FROM students s
            LEFT JOIN marks m ON s.roll_number = m.student_id
            WHERE s.roll_number = %s
            GROUP BY s.roll_number
        """, (roll_number, roll_number, roll_number))

        student_data = cursor.fetchone()
        cursor.close()

        if student_data:
            attendance_percentage, average_marks = student_data
            performance_category = predict_performance(attendance_percentage, average_marks)

            return jsonify({
                "roll_number": roll_number,
                "attendance_percentage": attendance_percentage,
                "average_marks": average_marks,
                "performance_category": performance_category
            })
        else:
            return jsonify({"error": "Student not found"}), 404

    except Exception as e:
        # Log the error with full details
        import traceback
        error_details = traceback.format_exc()
        print(f"Error while fetching performance data: {error_details}")
        return jsonify({"error": f"An error occurred: {str(e)}"}), 500

# Initialize MySQL
mysql.init_app(app)

if __name__ == '__main__':
    app.run(debug=True)
