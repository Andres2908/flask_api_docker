# Usar Python 3.9 como base
FROM python:3.11-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Instalar dependencias para funcionar
RUN python -m ensurepip --upgrade
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todos los archivos al contenedor
COPY . .

# Verificar versiones de Python y pip
RUN python --version && pip --version

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la API
CMD ["python", "app.py"]
