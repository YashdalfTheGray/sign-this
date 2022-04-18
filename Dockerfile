FROM amazonlinux:latest

COPY .bashprofile /root/.bashprofile

WORKDIR /usr/sign
COPY . /usr/sign

RUN cd /usr/sign
