from flask import Blueprint, render_template

gaming_blueprint = Blueprint('gaming', __name__)

@gaming_blueprint.route('/gaming')
def gaming_home():
    return render_template('gaming/gaming_home.html')
