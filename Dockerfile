# Usa una imagen base de Python
FROM python:3.11.2


# Copia los archivos de tu aplicación a la imagen
COPY . /app


WORKDIR /app/webapp


RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=run.py

CMD ["flask", "run", "--host=0.0.0.0"]