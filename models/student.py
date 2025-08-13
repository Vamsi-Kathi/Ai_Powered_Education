from flask import current_app
from flask_mysqldb import MySQL

mysql = MySQL()

class Student:
    def __init__(self, id, name, email, roll_number, password):
        self.id = id
        self.name = name
        self.email = email
        self.roll_number = roll_number
        self.password = password

    @staticmethod
    def get_student_by_identifier(identifier):
        cursor = mysql.connection.cursor()
        cursor.execute("SELECT * FROM students WHERE email = %s OR roll_number = %s", (identifier, identifier))
        data = cursor.fetchone()
        if data:
            return Student(*data)
        return None
