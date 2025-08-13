import MySQLdb

# Connect to the MySQL database
db = MySQLdb.connect("localhost", "root", "", "test")
cursor = db.cursor()

# Create table for students
cursor.execute("""
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    roll_number VARCHAR(20) UNIQUE,
    password VARCHAR(100)
)
""")

db.commit()
cursor.close()
db.close()
