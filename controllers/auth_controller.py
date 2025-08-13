from flask import Blueprint, request, render_template, redirect, url_for, flash, session
from extensions import mysql
from MySQLdb import OperationalError, IntegrityError

auth_blueprint = Blueprint('auth', __name__)

# Registration Route
@auth_blueprint.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        email = request.form['email']
        roll_number = request.form['roll_number']
        password = request.form['password']  # Storing plain text (no hashing)

        conn = mysql.connection
        cursor = conn.cursor()

        try:
            # Check if user already exists
            cursor.execute("SELECT id FROM students WHERE email = %s OR roll_number = %s", (email, roll_number))
            existing_user = cursor.fetchone()

            if existing_user:
                flash("User already exists. Please login.", "warning")
                return redirect(url_for('auth.login'))  # Redirect to login if user exists

            # Insert new user
            cursor.execute("INSERT INTO students (email, roll_number, password) VALUES (%s, %s, %s)", 
                           (email, roll_number, password))
            conn.commit()

            # Log in the user automatically after registration
            cursor.execute("SELECT id FROM students WHERE email = %s", (email,))
            new_user = cursor.fetchone()
            session['user_id'] = new_user[0]  # Set the session to the newly registered user's id

            flash("Registration successful! Redirecting to dashboard.", "success")
            return redirect(url_for('dashboard.dashboard_home'))  # Redirect to dashboard immediately after registration

        except IntegrityError:
            flash("Email or Roll Number already exists. Try logging in.", "danger")
            return redirect(url_for('auth.login'))

        except OperationalError as e:
            flash("Database connection failed. Please check your database credentials.", "danger")
            print(f"OperationalError: {e}")

        except Exception as e:
            conn.rollback()
            flash(f"Error: {e}", "danger")

        finally:
            cursor.close()
            conn.close()

    return render_template('register.html')  # Show registration page


# Login Route
@auth_blueprint.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email_or_rollno = request.form['email_or_rollno']
        password = request.form['password']

        conn = mysql.connection
        cursor = conn.cursor()

        try:
            # Fetch user by email or roll number
            cursor.execute("SELECT id, email, password FROM students WHERE email = %s OR roll_number = %s", 
                           (email_or_rollno, email_or_rollno))
            user = cursor.fetchone()

            if user and user[2] == password:  # Compare plain text passwords
                session['user_id'] = user[0]  # Save user session
                flash("Login successful!", "success")
                return redirect(url_for('dashboard.dashboard_home'))  # Redirect to dashboard

            else:
                flash("Invalid credentials. Please try again.", "danger")

        except OperationalError as e:
            flash("Database connection failed. Please check your database credentials.", "danger")
            print(f"OperationalError: {e}")

        except Exception as e:
            flash(f"Error: {e}", "danger")

        finally:
            cursor.close()
            conn.close()

    return render_template('login.html')  # Show login page


# Logout Route
@auth_blueprint.route('/logout')
def logout():
    session.pop('user_id', None)  # Remove user_id from session
    flash("You have been logged out successfully.", "success")
    return redirect(url_for('auth.login'))  # Redirect to login page
