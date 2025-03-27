# Usa la imagen base de Python 3.11
FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Actualizar pip y luego instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Verificar la instalación de Gunicorn
RUN gunicorn --version

# Copiar todos los archivos al contenedor
COPY . .

# Exponer el puerto 8080 (App Runner espera este puerto)
EXPOSE 8080

# Ejecutar la API con Gunicorn para producción
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
