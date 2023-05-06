###############################################################################################
# jupyter - BASE
###############################################################################################
FROM jupyter/tensorflow-notebook:python-3.10.10 as jupyter-base

WORKDIR /var/www

USER root

RUN apt-get update
RUN apt-get install vim -y
RUN apt-get install net-tools -y
RUN apt-get install dos2unix -y

USER jovyan

###############################################################################################
# jupyter - PRODUCTION
###############################################################################################
FROM jupyter-base as jupyter-deploy

RUN pip install --upgrade pip

EXPOSE 8888
