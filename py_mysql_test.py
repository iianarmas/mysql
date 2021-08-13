import mysql.connector

db = mysql.connector.connect(
    host='localhost',
    user='root',
    passwd='root!',
    database='pydemo'
)

cursor = db.cursor()

# cursor.execute('CREATE DATABASE pydemo')
