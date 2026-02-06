#!/bin/bash

##

set -e

set -x

##

bash apt.bash

bash upgrade.bash

bash software.bash

bash sshserver.bash

bash version.bash

