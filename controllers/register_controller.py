from werkzeug.security import generate_password_hash
from flask import Blueprint, request, render_template, redirect, url_for, flash
from extensions import mysql

register_blueprint = Blueprint('register', __name__)

@register_blueprint.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        email = request.form['email']
        roll_number = request.form['roll_number']
        password = request.form['password']

        # Check if the email already exists in the database
        conn = mysql.connection
        cursor = conn.cursor()

        cursor.execute("SELECT * FROM students WHERE email = %s", (email,))
        existing_user = cursor.fetchone()

        if existing_user:
            # If email already exists, show a message and prevent registration
            flash('Email is already registered. Please try another one.', 'error')
            return render_template('register.html')

        # Hash the password before saving it
        hashed_password = generate_password_hash(password)

        # Insert the new user into the database with the hashed password
        cursor.execute("INSERT INTO students (email, roll_number, password) VALUES (%s, %s, %s)",
                       (email, roll_number, hashed_password))

        conn.commit()
        cursor.close()

        # Redirect to login page after successful registration
        flash('Registration successful! Please log in.', 'success')
        return redirect(url_for('auth.login'))

    return render_template('register.html')
