###############################################################################################
# tensorflow container
###############################################################################################
FROM tensorflow/tensorflow:latest-jupyter as machinelearning

WORKDIR /var/www

RUN apt-get update
RUN apt-get install vim -y

RUN pip install sklearn