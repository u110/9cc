#!/bin/bash

set -ue

apt-get update -qq \
apt-get install -qq -y gcc make git binutils libc6-dev gdb sudo \
adduser --disabled-password --gecos '' user \
echo 'user ALL=(root) NOPASSWD:ALL' > /etc/sudoers.d/user \
apt-get autoclean && apt-get autoremove \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
