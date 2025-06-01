FROM dorowu/ubuntu-desktop-lxde-vnc AS desktopBase

##

WORKDIR /

COPY /provision .

RUN pwd

RUN find

##

RUN bash provision.bash
