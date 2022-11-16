import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='scrap',
                                         user='root',
                                         password='mariano')

  # mySql_query = "describe productos"
  # mySql_query = "select * from productos"
    mySql_query = "select count(*) from categorias"


    cursor = connection.cursor()
    cursor.execute(mySql_query)
   
    rows=cursor.fetchall()
    for row in rows:
    	print(row)

   
    cursor.close()


finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
