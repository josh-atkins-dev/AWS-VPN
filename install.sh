#!/usr/bin/env bash
set -o errexit

ansible-galaxy install angstwad.docker_ubuntu
ansible-galaxy install kbrebanov.openvpn

echo "Update dynamic inventory"
wget -q https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py -O ec2.py
wget -q https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini -O ec2.ini
chmod +x ./ec2.py
