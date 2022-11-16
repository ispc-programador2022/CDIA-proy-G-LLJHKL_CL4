# Importing the required libraries
import requests
import pandas as pd
from bs4 import BeautifulSoup
import re


import mysql.connector




# Downloading contents of the web page
url = "https://www.fullh4rd.com.ar/cat/supra/32/notebooks/1"
data = requests.get(url).text


# Creating BeautifulSoup object
soup = BeautifulSoup(data, 'html.parser')

# Verifying tables and their classes
print('categorias de la pagina:')
#for div in soup.find_all('div'):
 #   print(div.get('class'))


print(soup.title)
print(soup.ul.li.a)


# children
cate= soup.ul.li.a.i
hijos = cate.children
type(hijos)
for child in hijos:
	if child.name:  # Ignoramos los saltos de línea
		print({child.name})

#saca todas las etiquetas de la web, deja solo el texto toda la web!  ok
#text = soup.get_text()
#print(text)


#extrae todo el texto de las subcaterias de cada categoria.....como los parrafos  ok
#for div in soup.find_all('div', class_='cat-dropdown'):
#    print(div.get_text())

#extrae todo el texto de las categorias y subcaterias   ok
#for div in soup.find_all('li', class_='cat-opener'):
 #   print(div.get_text())

# faltaria guardar esto en una base de datos con tabla categoria, tabla: subcateria-------pk id_categoria

contador=0
salida=soup.find_all('li', class_='cat-opener')

try:

	mydb = mysql.connector.connect(host="localhost",
				user="root",
				passwd="mariano",
				database="scrap")
	mycursor = mydb.cursor()
#pruebo guardando la salida en una variable

	for categoria in salida:
		contador+=1
		print(categoria.get_text())
		descripcion=categoria.get_text()
		descripcion=categoria.get_text().replace(" ","_")
		print (descripcion)
	#	print(type(descripcion))
	#	print(len(descripcion))
	#	print (descripcion.replace("\n","SS"))
		print(descripcion.split())
		
		lista=descripcion.split()
	#	print(lista)
		print(lista[0])
		dato1=lista[0]	
		dato2=lista[0]	
		
		dato4=contador

		query = "INSERT INTO categorias (id_categoria , descripcion, otra) VALUES (default, %s , %s)"		
		record = (dato1, dato2)		
		mycursor.execute(query,record)
		mydb.commit()
		for x in range(1,len(lista)):
			query2 = "INSERT INTO subcategorias (id_sub , nombre, otra, id_cat) VALUES (default, %s , %s, %s )" 
			dato3=lista[x]
			record1 = (dato3,dato1,dato4)		
			mycursor.execute(query2,record1)
			mydb.commit()


		
		print("Record inserted successfully into categorias table")
except mysql.connector.Error as error:
	print("Failed to insert into MySQL table {}".format(error))

finally:
	if mydb.is_connected():
		mycursor.close()
  	#mydb.close()
    	#print("MySQL connection is closed")


#print(salida.get_text()) esto no se puede hacer porque "salida" no se puede imprimir solo hay que iterarlo

#print(salida)   imprime toda la informacion con las etiquetas html














