#!/bin/bash

yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible botocore boto3
cd /tmp
git clone https://github.com/awsdevops345/roboshop-ansible-roles.git
cd roboshop-ansible-roles
ansible-playbook -e component=mongodb main.yaml
ansible-playbook -e component=redis main.yaml
ansible-playbook -e component=rabbitmq main.yaml
ansible-playbook -e component=mysql main.yaml
ansible-playbook -e component=catalogue main.yaml
ansible-playbook -e component=user main.yaml
ansible-playbook -e component=cart main.yaml
ansible-playbook -e component=shipping main.yaml
ansible-playbook -e component=payment main.yaml
ansible-playbook -e component=web main.yaml