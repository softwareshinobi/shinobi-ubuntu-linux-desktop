#!/bin/bash

##

set -e;

set -x;

##

apt update

apt install -y remmina openssh-server sshpass

apt install -y sudo git vim nano dos2unix jq zip filezilla

apt install -y recordmydesktop kdenlive shotcut keepassxc

apt install -y wget net-tools curl

## bad nslookup

apt autoremove -y
