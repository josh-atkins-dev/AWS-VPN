#!/usr/bin/env bash
set -o errexit

ansible-galaxy install angstwad.docker_ubuntu

wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini