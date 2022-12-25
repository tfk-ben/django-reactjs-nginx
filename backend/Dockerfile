FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /backend

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

COPY ./entrypoint.sh /entrypoint.sh


COPY . /backend/