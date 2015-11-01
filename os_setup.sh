#!/bin/sh

apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sh -c "echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list"

apt-get update
apt-get install -y \
	git \
	vim \
	zsh \
	curl \
	wget \
	tree \
	terminator \
	gnome-panel \
	tmux \
	docker-engine \
	build-essential \
	libssl-dev \
	python-dev \
	lib32z1 \
	lib32ncurses5 \
	lib32bz2-1.0 \
	lib32stdc++6 \
	qemu-kvm \
	libvirt-bin \
	ubuntu-vm-builder \
	bridge-utils \
	virt-viewer \
	python-pygame \
	openssh-server

wget https://bootstrap.pypa.io/get-pip.py -O - | python
pip install -U docker-compose
pip install -U virtualenvwrapper

