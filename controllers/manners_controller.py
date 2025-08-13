from flask import Blueprint, render_template

# Create Blueprint for Manners
manners_blueprint = Blueprint('manners', __name__, url_prefix='/manners')

# Route for Manners Home Page
@manners_blueprint.route('/home')
def manners_home():
    return render_template('manners_home.html')  # ✅ Ensure the file is in templates/manners/
