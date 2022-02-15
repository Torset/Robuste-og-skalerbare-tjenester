#!/bin/bash

source /home/ubuntu/DCSG2003_V22_group2-openrc.sh

name=Balancer

user_data=/home/ubuntu/cloudconfig_balancer.txt

openstack server delete $name
sleep 5 &
wait

#ubuntu server 20.04 focal
image=2dcc56bf-6f1e-47aa-8b6d-4096009d9c30

flavor=m1.tiny

openstack server create $name --image $image --flavor $flavor --user-data $user_data --key-name Manager-ssh-pubkey
sleep 5 &

wait

openstack server add floating ip $name 10.212.139.37