FROM python:3.11-slim

# Evita que Python genere archivos .pyc y permite ver logs en tiempo real
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# Instalamos Flask para esta prueba mínima
RUN pip install --no-cache-dir Flask

COPY . .

# Comando para ejecutar tu app
CMD ["python", "main.py"]
