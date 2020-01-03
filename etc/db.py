from app import app
from flaskext.mysql import MySQL
import base64

###########################################################
# Enter the password from the CLI
# Values accepted are only with including double quotes.
# E.G : "Password"
###########################################################
password = input("Please enter the MYSQL-DB password: \n")
print("Value entered\n" + str(password))

###########################################################
mysql = MySQL()
 
# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = str(password)
app.config['MYSQL_DATABASE_DB'] = 'ihss'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

# This print is used just for the debugging purposes
# print(app.config)
mysql.init_app(app)

###########################################################