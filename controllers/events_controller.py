from flask import Blueprint, render_template

events_blueprint = Blueprint('events', __name__)

@events_blueprint.route('/events')
def event_home():
    return render_template('events/event_home.html')
