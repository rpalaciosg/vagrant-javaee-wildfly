#!/bin/bash

# Fetch the latest packages from all repositories ...
apt-get -y update
apt-get -y upgrade

# ... and run a distribution upgrade (including the kernel).
#apt-get -y dist-upgrade

# Install some basic tools needed for debugging and administration.
apt-get -y install git-core build-essential openssl libssl-dev curl htop links bsdtar unzip vim nano

# Rebuild dkms for all installed kernel versions.
#ls /var/lib/initramfs-tools | xargs -n1 /usr/lib/dkms/dkms_autoinstaller start
