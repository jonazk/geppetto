FROM python:latest

RUN apt-get -y update && apt-get -y upgrade
RUN python -m pip install --upgrade pip
RUN python -m pip install poetry
ADD . /app/
WORKDIR /app
RUN poetry install
EXPOSE 5000
CMD [ "poetry", "run", "geppetto" ]
