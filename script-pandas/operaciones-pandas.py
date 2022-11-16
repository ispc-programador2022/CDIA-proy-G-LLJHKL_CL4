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
  

print("\n imprimir precio")
print(data.shape)

  


