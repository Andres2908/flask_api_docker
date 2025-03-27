FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Instalar dependencias
RUN pip3 install --no-cache-dir -r requirements.txt

# Copiar los archivos al contenedor
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la API
CMD ["python3", "app.py"]