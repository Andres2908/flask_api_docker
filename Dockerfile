FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Actualizar pip y luego instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todos los archivos al contenedor
COPY . .

# Exponer el puerto 5000
EXPOSE 8080

# Ejecutar la API
CMD ["python3", "app.py"]
