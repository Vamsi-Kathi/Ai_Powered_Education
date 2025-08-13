from flask import Blueprint, render_template

health_blueprint = Blueprint('health', __name__, url_prefix='/health')

@health_blueprint.route('/')
def health_home():
    return render_template('health/health_tips.html')
