#!/usr/bin/env bash

sudo apt install software-properties-common -y
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update && sudo apt install ansible python-pymysql python3-pymysql -y
ansible-galaxy collection install community.mysql

