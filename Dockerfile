FROM ubuntu:14.04

RUN apt-get update && apt-get install -y texlive-full
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git unzip vim wget poppler-utils

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN wget http://mirrors.ctan.org/support/texcount/texcount.pl -O /usr/local/bin/texcount && chmod +x /usr/local/bin/texcount
