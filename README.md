# Education Platform with Rule-Based Recommendation

A full-stack web application built with Flask and MySQL that provides 
role-based dashboards for Students and Admins with course recommendation logic.

## Tech Stack
- Backend: Python, Flask, REST APIs
- Database: MySQL
- Frontend: HTML5, CSS3, JavaScript
- Auth: Flask session-based authentication, BCrypt password hashing

## Features
- Role-based dashboards — Student and Admin
- Student can browse courses, view recommendations
- Admin can manage courses and users
- Rule-based course recommendation based on user interests and categories
- RESTful API endpoints for course and user management
- MySQL database with relational schema design
- BCrypt password hashing for security

## Project Structure
- controllers/ — Route handlers and business logic
- models/ — Database models
- templates/ — HTML templates (Jinja2)
- static/ — CSS, JavaScript, images
- database/ — DB connection and schema

## How to Run
pip install -r requirements.txt
python app.py
