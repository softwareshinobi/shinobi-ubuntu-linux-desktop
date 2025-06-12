#!/bin/bash

apt update;

apt install -y openssh-server;

apt install -y sudo;

cp startup/startup.sh /startup.sh

service ssh restart;

##

echo "fin."
