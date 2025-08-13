from flask import Blueprint, render_template, session, flash, redirect, url_for
from extensions import mysql
from MySQLdb import OperationalError

dashboard_blueprint = Blueprint('dashboard', __name__)

@dashboard_blueprint.route('/home')
def dashboard_home():
    user_id = session.get('user_id')  # Get the user_id from session
    print(f"Checking user session: {user_id}")  # Debugging output

    if user_id:
        conn = mysql.connection
        cursor = conn.cursor()

        try:
            cursor.execute("SELECT id, email, roll_number FROM students WHERE id = %s", (user_id,))
            user = cursor.fetchone()

            if user:
                print(f"User {user[1]} has been found. Redirecting to dashboard.")  # Debugging output
                return render_template('dashboard.html', user=user, student=user)  # Ensure 'student' exists
            else:
                flash("User not found.", "danger")
                return redirect(url_for('auth.login'))  # If user not found, redirect to login

        except OperationalError as e:
            flash("Database connection failed. Please check your database credentials.", "danger")
            print(f"OperationalError: {e}")
            return redirect(url_for('auth.login'))

    else:
        flash("Please log in first.", "danger")
        return redirect(url_for('auth.login'))  # If not logged in, redirect to login
