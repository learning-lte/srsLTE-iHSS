#!/usr/local/bin/python2.7
from app import app
from flaskext.mysql import MySQL

mysql = MySQL()

# MySQL configurations
app.config[‘MYSQL_DATABASE_USER’] = 'root'
app.config[‘MYSQL_DATABASE_PASSWORD’] = ''
app.config[‘MYSQL_DATABASE_DB’] = ''
app.config[‘MYSQL_DATABASE_HOST’] = ''
mysql.init_app(app)