#!/bin/bash

##

set -e;

set -x;

##

apt update

apt install -y recordmydesktop kdenlive shotcut zip keepassx dos2unix git filezilla remmina openssh-server sudo vim sshpass

apt install -y wget net-tools curl nslookup

apt autoremove -y
