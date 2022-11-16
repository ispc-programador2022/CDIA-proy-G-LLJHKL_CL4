import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='scrap',
                                         user='root',
                                         password='mariano')

    mySql_insert_query = """INSERT INTO categorias (id_categoria , descripcion, otra) 
                           VALUES 
                           (null, 'CategoriaX','ctx') """

    cursor = connection.cursor()
    cursor.execute(mySql_insert_query)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into categoria table")
    cursor.close()

except mysql.connector.Error as error:
    print("Failed to insert record into categoria table {}".format(error))

finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
