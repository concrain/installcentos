#!/bin/bash

# enable epel repos
sudo yum install epel-release
yum --disablerepo=* --enablerepo=epel-release
ls /etc/yum.repos.d/

yum -y install wget
yum -y install net-tools
yum -y install iptables-services
yum -y install bridge-utils
yum -y install bash-completion
yum -y install vim
yum -y install tree

yum -y update

sudo reboot
