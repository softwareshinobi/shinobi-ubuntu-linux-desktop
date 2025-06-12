FROM dorowu/ubuntu-desktop-lxde-vnc AS base

##

WORKDIR /provision

##

COPY /provision .

RUN bash provision.bash

#RUN pwd

#RUN find

##



##RUN touch ../test.dat
##