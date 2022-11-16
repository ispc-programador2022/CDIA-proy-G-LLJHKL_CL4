import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='scrap',
                                         user='root',
                                         password='mariano')

  # mySql_query = "describe productos"
  # mySql_query = "select * from productos"
    mySql_query = "Select c.id_categoria , c.descripcion, s.nombre From categorias c, subcategorias s where c.id_categoria=s.id_cat "


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
