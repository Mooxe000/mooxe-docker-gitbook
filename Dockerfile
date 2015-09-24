FROM mooxe/node:latest

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

# system update
RUN \
  apt-get update && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get autoremove -y

RUN \
  /bin/bash -l -c 'cnpm install -g gitbook-cli' && \
  /bin/bash -l -c 'gitbook versions:install'
