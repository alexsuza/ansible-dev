#!/bin/bash
#install amazon ansible-ec2 plugin
sudo ansible-galaxy collection install amazon.aws

# install ansible with python3
sudo pip3 install ansible

#install boto3 and botocore
sudo pip3 install boto3


#install git
sudo yum install git tree vim -y

#Clone my code
git clone https://github.com/alexsuza/ansible.git /tmp/code

sudo cp -r /tmp/code/* /home/ec2-user

sudo rom -rf /tmp/code

sudo chown -R ec2-user:ec2-user /home/ec2-user

#copy code
cp -r ansible/* .

#remove clone 
rm -rf ansible



