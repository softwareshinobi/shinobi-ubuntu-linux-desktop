#!/bin/bash

set -e

set -x

pwd

find

cp /provision/startup/startup.sh /startup.sh

service ssh restart;
