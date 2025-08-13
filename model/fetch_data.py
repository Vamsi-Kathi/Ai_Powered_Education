import mysql.connector
import pandas as pd

def fetch_student_data():
    # Connect to MySQL database
    conn = mysql.connector.connect(
        host="localhost",  # Update with your DB host
        user="your_user",  # Update with your DB user
        password="your_password",  # Update with your DB password
        database="test"  # Update with your DB name
    )
    
    # SQL query to fetch data
    query = """
    SELECT
        s.roll_number,
        (SELECT COUNT(*) FROM attendance WHERE roll_number = s.roll_number AND status = 'Present') * 100.0 /
        (SELECT COUNT(*) FROM attendance WHERE roll_number = s.roll_number) AS attendance_percentage,
        AVG(m.marks) AS average_marks
    FROM students s
    LEFT JOIN marks m ON s.roll_number = m.student_id
    GROUP BY s.roll_number;
    """
    
    # Fetch data from the database into a DataFrame
    df = pd.read_sql(query, conn)
    
    # Close the connection
    conn.close()
    
    return df
