###############################################################################################
# jupyter - BASE
###############################################################################################
FROM tensorflow/tensorflow:2.11.0-jupyter as jupyter-base

WORKDIR /var/www

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install vim -y
RUN apt-get install net-tools -y
RUN apt-get install dos2unix -y

###############################################################################################
# jupyter - PRODUCTION
###############################################################################################
FROM jupyter-base as jupyter-deploy

RUN pip install --upgrade pip
RUN pip install sklearn
RUN pip install pandas
RUN pip install seaborn

EXPOSE 8888
