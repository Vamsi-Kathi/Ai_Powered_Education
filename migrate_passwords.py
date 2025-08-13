from werkzeug.security import generate_password_hash
from extensions import mysql
from flask import Flask
from config import Config
import MySQLdb.cursors  # Import MySQL cursor support

# Initialize Flask App
app = Flask(__name__)
app.config.from_object(Config)

# Initialize MySQL
mysql.init_app(app)

# Function to hash existing passwords
def hash_existing_passwords():
    with app.app_context():  # Ensure we have the Flask app context
        conn = mysql.connection
        if conn is None:
            print("❌ ERROR: MySQL connection is not established. Check your config.")
            return

        try:
            cursor = conn.cursor(MySQLdb.cursors.DictCursor)  # Use DictCursor instead of dictionary=True

            # Fetch all users with their current passwords
            cursor.execute("SELECT id, password FROM students")
            users = cursor.fetchall()

            for user in users:
                hashed_password = generate_password_hash(user['password'])  # Hash the password
                cursor.execute("UPDATE students SET password = %s WHERE id = %s", (hashed_password, user['id']))

            conn.commit()  # Commit changes to the database
            cursor.close()
            print("✅ All passwords have been hashed successfully!")

        except Exception as e:
            print(f"❌ ERROR: {e}")

# This script will only run when executed directly, not when imported
if __name__ == "__main__":
    hash_existing_passwords()
