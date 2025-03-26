FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Copiar todos los archivos al contenedor
COPY . .

# Verificar versiones de Python y pip
RUN python --version && pip --version

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la API
CMD ["python", "app.py"]
