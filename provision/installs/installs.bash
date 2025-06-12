#!/bin/bash

##

set -e

set -x

##

bash apt.bash

bash upgrade.bash

##

bash software.bash

bash sshserver.bash

##

bash version.bash

##

sudo apt update -y

sudo apt upgrade -y

sudo apt autoremove --purge -y

sudo apt clean
