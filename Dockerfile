# Imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . .

# Instala las dependencias desde requirements.txt
RUN pip install -r requirements.txt

# Expone el puerto 9999
EXPOSE 9999

# Comando que ejecuta la aplicación
CMD ["python", "app.py"]
