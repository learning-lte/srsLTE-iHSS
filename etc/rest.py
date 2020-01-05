import pymysql
from app import app
from db import mysql
from flask import jsonify, request
from mysql.connector import Error

@app.route('/user', methods=['GET'])
# GET a new user in the mysql-DB
def get_user():
	conn = None;
	cursor = None;
	try:
		id = request.args.get('id')
		if id:
			conn = mysql.connect()
			cursor = conn.cursor(pymysql.cursors.DictCursor)
			cursor.execute("SELECT user_id id, user_name name, user_email email, user_password pwd FROM user WHERE user_id=%s", id)
			row = cursor.fetchone()
			resp = jsonify(row)
			resp.status_code = 200
			return resp
		else:
			resp = jsonify('User "id" not found in query string')
			resp.status_code = 500
			return resp
	except Exception as e:
		print(e)
	finally:
		cursor.close() 
		conn.close()

@app.route('/user', methods=['POST'])
# POST a new user in the mysql-DB 
def post_user():
	conn = None;
	cursor = None;
	try:
		id = request.args.get('id')
		if id:
			conn = mysql.connect()
			cursor = conn.cursor(pymysql.cursors.DictCursor)
			mySql_insert_query="""INSERT INTO user (user_id, user_name, user_imsi, user_key, user_op_type, user_op_or_opc, user_sqn, user_qci, user_email) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) """
			recordTuple = (user_id, user_name, user_imsi, user_key, user_op_type, user_op_or_opc, user_sqn, user_qci, user_email)
			cursor.execute(mySql_insert_query, recordTuple)
			connection.commit()
			print("The record has been successfully into the user mysql table!")
		
		except mysql.connection.Error as error:
			print("Failed to insert into the MysqlDB table {}".format(error))

		finally:
			if (connection.is_connected()):
				cursor.close()
				connection.close()
				print("MySQL DB connection is closed at this moment")