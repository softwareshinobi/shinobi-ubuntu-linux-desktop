FROM dorowu/ubuntu-desktop-lxde-vnc AS base

##

WORKDIR /

##

COPY /provision .

RUN bash provision.bash

##COPY startup/startup.sh ../startup.sh

##COPY installs/startup/startup.sh /startup.sh

##

##WORKDIR /


#RUN pwd

#RUN find

##



##RUN touch ../test.dat
##
