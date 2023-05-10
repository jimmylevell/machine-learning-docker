# Machine and Deep Learning Docker Image   
[![Publish machine learning docker images](https://github.com/jimmylevell/machine-learning-docker/actions/workflows/action.yml/badge.svg)](https://github.com/jimmylevell/machine-learning-docker/actions/workflows/action.yml)  

## Goal
Provide a docker image with all necessary tools installed to perform machine and deep learning tasks with. 

## Frameworks used
- Jupyter 
- Tensorflow  

## To start the container
```
docker pull ghcr.io/jimmylevell/machine-learning-docker/notebook-juypter:latest
docker run -d --restart always --name machine-learning-juypter -v C:\Data\jupyter-notebooks:/var/www -p 8888:8888 ghcr.io/jimmylevell/machine-learning-docker/notebook-juypter:latest
```

# Docker image details 
Base image: tensorflow/tensorflow:latest-jupyter    
Exposed ports: 8888  
Additional installed resources:  
- Troubleshooting: vim, net-tools, dos2unix  
- Data science: sklearn, pandas, seaborn

# Deployment
## General
Service: jupyter  
Data Path: /home/docker/levell/jupyter/  
Access URL: jupyter.levell.ch  

## Attached Networks
- traefik-public - access to reverse proxy

## Attached volumes
jupyterdata: storing the jupyter notebooks  

## Environment variables 
None  
