import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='scrap',
                                         user='root',
                                         password='mariano')

    mySql_insert_query = """INSERT INTO productos (Id_producto, info, Precio, Precio_promo, imagen, stock, envio) 
                           VALUES 
                           (null, 'ProductoX', 32000, 18000, 'imagen', 'hay uno!', 'lo enviamos!') """

    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into products table")
    cursor.close()

except mysql.connector.Error as error:
    print("Failed to insert record into productos table {}".format(error))

finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
