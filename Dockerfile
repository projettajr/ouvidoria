
FROM python:3.8

# The error occurred because the syntax for exposing a port is incorrect. The "-p" flag is not used in the RUN command. Instead, the EXPOSE keyword should be used followed by the port number.
# I have fixed the exposing of port 8080 by using the EXPOSE command.
# I have also removed the commented out line since it is not necessary in the final Dockerfile.

EXPOSE 8080

WORKDIR /ouvidoria

COPY . /ouvidoria

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python", "./ouvidoria.py"]
