FROM python:3.11

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar solo requirements.txt primero
COPY requirements.txt .

# Crear y activar un entorno virtual
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Instalar dependencias dentro del entorno virtual usando pip3
RUN pip3 install --no-cache-dir --upgrade pip && pip3 install -r requirements.txt

# Copiar los archivos de la aplicación al contenedor
COPY . .

# Exponer el puerto 5000
EXPOSE 5000

# Usar Gunicorn para ejecutar la aplicación
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app:app"]
