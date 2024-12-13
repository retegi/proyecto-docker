# Usa una imagen base ligera de Python
FROM python:3.11-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /var/www/proyecto-docker/myproject
ENV PYTHONPATH=/var/www/proyecto-docker/myproject

# Copiar el archivo requirements.txt desde el contexto de construcción
COPY myproject/requirements.txt .

# Instalar las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el proyecto desde el contexto de construcción
COPY myproject/ .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 8000

# Comando para iniciar Gunicorn
CMD ["gunicorn", "--bind", "unix:/run/proyecto-docker.sock", "myproject.wsgi:application"]
