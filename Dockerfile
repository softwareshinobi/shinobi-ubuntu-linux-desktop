FROM dorowu/ubuntu-desktop-lxde-vnc AS base

##

WORKDIR /

##

COPY /provision .

RUN bash provision.bash

##
