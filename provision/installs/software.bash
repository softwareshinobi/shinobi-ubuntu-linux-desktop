#!/bin/bash

##

set -e;

set -x;

##

apt update

apt install -y sudo remmina openssh-server sshpass git vim nano dos2unix zip filezilla

apt install -y recordmydesktop kdenlive shotcut keepassxc

apt install -y wget net-tools curl

## bad nslookup

apt autoremove -y
