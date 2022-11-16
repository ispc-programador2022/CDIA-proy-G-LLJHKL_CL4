import pandas as pd
data=pd.read_csv('productos.csv')
print("\n primeras lineas")
print(data.head())
print("\n cantidad de registros")
print(data.count())

print("\n imprimiendo una columna")
print(data.info)

print("\n imprimir indicadores")
print(data.describe())
  

print("\n cantidad de filas")
print(data.shape)

  
print("\n agrupando por columnas")
print(data.shape)


