from flask import Blueprint, render_template

semwise_blueprint = Blueprint('semwise', __name__)

@semwise_blueprint.route('/semwise')
def semwise_home():
    return render_template('semwise/semwise_home.html')
