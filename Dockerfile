FROM debian:stable-slim
MAINTAINER Hit Factory <tami@hitfactory.co.nz>

ENV DEBIAN_FRONTEND noninteractive

# setup workdir
RUN mkdir -p /root/work/
WORKDIR /root/work/

# install git and slim down image
RUN apt-get -y update && apt-get -y install git git-ftp && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

# run a CMD to show git is installed
CMD git help

# run a CMD to show git-ftp is installed
CMD git-ftp --version
