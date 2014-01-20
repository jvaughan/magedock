# Firefox over VNC
#
# VERSION               0.1

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y apache2 php5 php5-mcrypt php5-imagick php5-xdebug
