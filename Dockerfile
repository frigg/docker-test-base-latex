FROM ubuntu:14.04

RUN apt-get update && apt-get install -y texlive-full
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git unzip vim wget poppler-utils

RUN apt-get update && apt-get install -y python3 python3-dev python3-pip libxml2-dev libxslt-dev python3-lxml
RUN pip3 install frigg-worker

ADD worker.yaml /etc/frigg/worker.yaml

#CMD ["frigg-worker", "start"]
