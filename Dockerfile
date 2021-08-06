###############################################################################################
# jupyter - BASE
###############################################################################################
FROM tensorflow/tensorflow:latest-jupyter as jupyter-base

WORKDIR /var/www

RUN apt-get -o Acquire::Check-Valid-Until=false -o Acquire::Check-Date=false update
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