from flask import Blueprint, render_template
from extensions import mysql

# Create Career Blueprint
career_blueprint = Blueprint('career', __name__, url_prefix='/career')

@career_blueprint.route('/')
def career_home():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM career_guidance ORDER BY posted_on DESC")
    resources = cursor.fetchall()
    cursor.close()
    
    return render_template('career_guidance.html', resources=resources)
