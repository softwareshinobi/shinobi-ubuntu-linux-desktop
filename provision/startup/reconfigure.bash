#!/bin/bash

set -e

set -x

cp startup/startup.sh ../startup.sh

service ssh restart;
