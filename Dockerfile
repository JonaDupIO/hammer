FROM ubuntu:trusty

RUN apt-get update && apt-get install -y wget
RUN echo "deb http://deb.theforeman.org/ trusty stable" > /etc/apt/sources.list.d/foreman.list
RUN wget -q http://deb.theforeman.org/foreman.asc -O- | apt-key add -

RUN apt-get update && apt-get install -y ruby-hammer-cli ruby-hammer-cli-foreman*
