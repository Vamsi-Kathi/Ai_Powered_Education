from flask_mysqldb import MySQL

mysql = MySQL()

def init_mysql(app):
    app.config['MYSQL_HOST'] = 'localhost'
    app.config['MYSQL_USER'] = 'root'  # Change 'root' to your MySQL username
    app.config['MYSQL_PASSWORD'] = '1234'  # Set your correct MySQL password
    app.config['MYSQL_DB'] = 'test'  # Ensure this is the correct database name
    app.config['MYSQL_CURSORCLASS'] = 'DictCursor'  

    mysql.init_app(app)
