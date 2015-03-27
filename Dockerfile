FROM ubuntu:14.04

RUN apt-get update && apt-get install -y texlive-full
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git unzip vim wget poppler-utils

RUN apt-get update && apt-get install -y python3 python3-dev python3-pip libxml2-dev libxslt-dev python3-lxml
RUN pip3 install frigg-common==0.2 frigg-coverage==0.4.0 frigg-worker==0.7.2
RUN pip3 freeze

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN wget http://mirrors.ctan.org/support/texcount/texcount.pl -O /usr/local/bin/texcount && chmod +x /usr/local/bin/texcount

COPY worker.yaml /etc/frigg/config.yaml

CMD ["frigg-worker"]
