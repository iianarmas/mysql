import mysql.connector

db = mysql.connector.connect(
    host='iiandemo.mysql.database.azure.com',
    user='myadmin@iiandemo',
    passwd='hackme26!',
    database='pydemo'
)

cursor = db.cursor()

# cursor.execute('CREATE DATABASE pydemo')
