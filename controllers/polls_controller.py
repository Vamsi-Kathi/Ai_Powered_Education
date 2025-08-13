from flask import Blueprint, render_template

polls_blueprint = Blueprint('polls', __name__)

@polls_blueprint.route('/polls')
def poll_home():
    return render_template('polls/poll_home.html')
