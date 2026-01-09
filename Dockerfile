FROM dorowu/ubuntu-desktop-lxde-vnc AS desktopBase

##

WORKDIR /

COPY /provision .

##

RUN bash provision.bash

##

COPY provision/startup/startup.sh /startup.sh

##
