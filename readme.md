# Machine and Deep Learning Docker Image
## Goal
Provide a docker image with all necessary tools installed to perform machine and deep learning tasks with. 

## Installed tools
- Tensorflow
- Jupyter
- sklearn

## Port configuration
Listens to 8888

## To start the container
``
docker pull ghcr.io/jimmylevell/machine-learning:latest
docker run -d --restart always --name machine-learning-juypter \
          -v /srv/nginx/nginx_default.conf:/etc/nginx/conf.d/default.conf \
          -p 8888:8888 ghcr.io/jimmylevell/machine-learning:latest
``