FROM python:3.8

EXPOSE 8080
#ENV DISPLAY=:99

WORKDIR /ouvidoria

COPY . /ouvidoria

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "./ouvidoria.py"]
