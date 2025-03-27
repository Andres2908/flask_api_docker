FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar y instalar dependencias primero para aprovechar el caché
COPY requirements.txt .

# Crear y activar un entorno virtual
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Instalar dependencias dentro del entorno virtual
RUN /venv/bin/pip install --no-cache-dir --upgrade pip && /venv/bin/pip install -r requirements.txt

# Copiar los archivos de la aplicación
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar Gunicorn desde el entorno virtual
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
