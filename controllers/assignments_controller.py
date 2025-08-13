from flask import Blueprint, render_template

assignments_blueprint = Blueprint('assignments', __name__, url_prefix='/assignments')

@assignments_blueprint.route('/')
def assignments_home():
    return render_template('assignments/assignments.html')

@assignments_blueprint.route('/python')
def python_assignments():
    return render_template('assignments/python_assignments.html')

@assignments_blueprint.route('/java')
def java_assignments():
    return render_template('assignments/java_assignments.html')

@assignments_blueprint.route('/html')
def html_assignments():
    return render_template('assignments/html_assignments.html')

@assignments_blueprint.route('/css')
def css_assignments():
    return render_template('assignments/css_assignments.html')

@assignments_blueprint.route('/sql')
def sql_assignments():
    return render_template('assignments/sql_assignments.html')
