from flask import Blueprint, render_template, request, redirect, url_for, flash
import mysql.connector
from datetime import datetime

attendance_blueprint = Blueprint('attendance', __name__, url_prefix='/attendance')

# Database connection function
def get_db_connection():
    return mysql.connector.connect(
        host="localhost",
        user="root",  # Change if needed
        password="yourpassword",  # Change if needed
        database="test"
    )

@attendance_blueprint.route('/mark', methods=['GET', 'POST'])
def mark_attendance():
    """Faculty Marks Attendance for All Students"""
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)

    # Fetch all student roll numbers
    cursor.execute("SELECT roll_number FROM students ORDER BY roll_number ASC")
    students = cursor.fetchall()

    if request.method == 'POST':
        attendance_data = request.form.to_dict(flat=False)
        date = datetime.now().date()
        marked_by = "Faculty"  # Replace with the logged-in faculty later

        try:
            for key, status_list in attendance_data.items():
                if key.startswith("status_"):  # Ensures we process only attendance status fields
                    roll_number = key.replace("status_", "")
                    status = status_list[0]

                    # Check if attendance already exists for today
                    cursor.execute(
                        "SELECT id FROM attendance WHERE roll_number = %s AND date = %s",
                        (roll_number, date)
                    )
                    existing_record = cursor.fetchone()

                    if not existing_record:
                        cursor.execute(
                            "INSERT INTO attendance (roll_number, date, status, marked_by) VALUES (%s, %s, %s, %s)",
                            (roll_number, date, status, marked_by)
                        )

            conn.commit()
            flash("Attendance marked successfully!", "success")
        except mysql.connector.Error as err:
            flash(f"Database Error: {err}", "danger")
        finally:
            conn.close()

        return redirect(url_for('attendance.mark_attendance'))

    conn.close()
    return render_template('attendance/mark_attendance.html', students=students)

@attendance_blueprint.route('/view', methods=['GET', 'POST'])
def view_attendance():
    """Students View Their Attendance"""
    records = []
    roll_number = None
    percentage = None

    if request.method == 'POST':
        roll_number = request.form['roll_number']

        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)

        # Fetch attendance records for the student
        cursor.execute("SELECT date, status FROM attendance WHERE roll_number = %s ORDER BY date ASC", (roll_number,))
        records = cursor.fetchall()

        # Calculate attendance percentage
        cursor.execute("SELECT COUNT(*) AS total_days FROM attendance WHERE roll_number = %s", (roll_number,))
        total_days = cursor.fetchone()["total_days"]

        cursor.execute("SELECT COUNT(*) AS present_days FROM attendance WHERE roll_number = %s AND status = 'Present'", (roll_number,))
        present_days = cursor.fetchone()["present_days"]

        percentage = (present_days / total_days) * 100 if total_days > 0 else 0

        conn.close()

    return render_template('attendance/view_attendance.html', records=records, roll_number=roll_number, percentage=percentage)
