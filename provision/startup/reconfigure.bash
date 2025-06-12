#!/bin/bash

set -e

set -x

cp /provision/startup/startup.sh ../startup.sh

service ssh restart;
