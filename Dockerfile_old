# Dockerfile
FROM python:3.11-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /proyecto-docker

# Copiar los archivos de requerimientos
COPY requirements.txt /proyecto-docker/

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código del proyecto al contenedor
COPY . /proyecto-docker/

# Exponer el puerto de desarrollo
EXPOSE 8000

# Comando por defecto para iniciar Django
CMD ["python", "myproject/manage.py", "runserver", "0.0.0.0:8000"]