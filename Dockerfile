# Usar una imagen base de Python
FROM python:3.9

# Definir el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar archivos necesarios al contenedor
COPY requirements.txt requirements.txt

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el código de la aplicación
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
