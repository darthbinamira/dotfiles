#!/bin/sh

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

apt-get update
apt-get install -y git vim zsh curl wget tree terminator gnome-panel tmux lxc-docker build-essential libssl-dev python-dev lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6 qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils virt-viewer python-pygame
wget https://bootstrap.pypa.io/get-pip.py -O - | python
pip install -U docker-compose
pip install -U virtualenvwrapper

