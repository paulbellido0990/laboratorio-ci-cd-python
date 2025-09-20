# Usamos una imagen oficial de Python 3.10
FROM python:3.10-slim

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiamos requirements.txt (si existe) e instalamos dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt || true

# Copiamos el resto del código
COPY . .

# Comando por defecto para ejecutar la app
CMD ["python", "app.py"]
