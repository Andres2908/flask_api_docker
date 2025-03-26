FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Actualizar pip y luego instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todos los archivos al contenedor
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la API
CMD ["python", "app.py"]
