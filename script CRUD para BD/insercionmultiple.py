import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='scrap',
                                         user='root',
                                         password='mariano')

    mySql_insert_query = """INSERT INTO productos (Id_producto, info, Precio, Precio_promo, imagen, stock, envio) 
                           VALUES (default,%s, %s, %s, %s, %s, %s) """

    records_to_insert = [( 'HP Pavilion Power', 12000,10000, 'imagen','hay uno!','E.gratis'),
                         ('MSI WS75 9TL-496', 5799, 4500, 'imagen', 'hay dos', 'E.pago'),
                         ( 'Microsoft Surface', 2330, 2000, 'imagen','hay tres', 'consultar')]

    cursor = connection.cursor()
    cursor.executemany(mySql_insert_query, records_to_insert)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into products table")

except mysql.connector.Error as error:
    print("Failed to insert record into MySQL table {}".format(error))

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")



