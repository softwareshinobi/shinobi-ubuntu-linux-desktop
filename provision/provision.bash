#!/bin/bash

##

set -e

set -x

##

cd media/

bash media.bash

cd ..

##

cd installs/

bash installs.bash

cd ..


cd startup/

bash reconfigure.bash

cd ..

##

sudo apt -y autoremove
