ARG DEBIAN_FRONTEND=noninteractive
# getting base image from ubuntu
FROM ubuntu

MAINTAINER Yogesh Tillu <tillu.yogesh@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y ninvaders \
    && apt-get install -y apt-utils && rm -rf /var/lib/apt/lists/*



CMD ["echo", "Buiding image from docker"]
CMD /usr/games/ninvaders
