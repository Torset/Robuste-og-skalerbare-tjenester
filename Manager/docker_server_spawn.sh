#!/bin/bash

source /home/ubuntu/DCSG2003_V22_group2-openrc.sh

name=Docker_server

user_data=/home/ubuntu/cloudconfig_docker_server.txt

#ubuntu server 20.04 focal
image=2dcc56bf-6f1e-47aa-8b6d-4096009d9c30

flavor=m1.small

openstack server create $name --image $image --flavor $flavor --user-data $user_data --key-name Manager-ssh-pubkey