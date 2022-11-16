# Importing the required libraries
import requests
from bs4 import BeautifulSoup
import mysql.connector
import re



# Downloading contents of the web page
url = "https://www.fullh4rd.com.ar/cat/supra/32/notebooks/1"
#hacer un ciclo y cargar la pagina cambiar el 1 por 2 3 etc...

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
salida=soup.find_all('div', class_='item product-list')

try:

	mydb = mysql.connector.connect(host="localhost",
				user="root",
				passwd="mariano",
				database="scrap")
	mycursor = mydb.cursor()
#pruebo guardando la salida en una variable

	for producto in salida:
		#contador+=1
		print(producto.get_text())
		descripcion=producto.get_text()
	
		
		
		descripcion=producto.get_text().replace(" ","_").replace("$"," ").replace(",","")
		
	
	

	
		
		print (descripcion)
		#print(type(descripcion))
		#print(len(descripcion))
		#print (descripcion.replace("\n","SS"))
		print(descripcion.split())
		
		lista=descripcion.split()
		#print(lista)
		print(lista[0])
		dato1=lista[0]		
		dato2=lista[1]
		dato22=dato2[:-1]
		print(dato22)
		dato3=lista[2]	
		dato4=lista[3]	
		dato5=lista[4]
		dato6=lista[5]		
		
		#dato4=contador

		query = "INSERT INTO productos (id_producto , info, precio, precio_promo, imagen, stock, envio) VALUES (default, %s , %s, %s, %s, %s, %s)"		
		record = (dato1, dato22, dato3, dato4, dato5, dato6)		
		mycursor.execute(query,record)
		mydb.commit()
		print("Record inserted successfully en tabla productos")
except mysql.connector.Error as error:
	print("Failed to insert into MySQL table {}".format(error))

finally:
	if mydb.is_connected():
		mycursor.close()
  	#mydb.close()
    	#print("MySQL connection is closed")


#print(salida.get_text()) esto no se puede hacer porque "salida" no se puede imprimir solo hay que iterarlo

#print(salida)   imprime toda la informacion con las etiquetas html














