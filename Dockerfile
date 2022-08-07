FROM python:3.9-bullseye

ARG RUN_ID

ARG MODEL_NAME

ENV HOME /home/mlflowserver

COPY ./requirements.txt .

RUN mkdir -p ${HOME}/mlflow &&\
    pip install --upgrade pip &&\
    pip install -r requirements.txt &&\
    apt-get update &&\
    apt-get install -y gcc git