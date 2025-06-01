FROM dorowu/ubuntu-desktop-lxde-vnc as desktopBase

##

WORKDIR /

COPY /provision .

##

RUN bash provision.bash
