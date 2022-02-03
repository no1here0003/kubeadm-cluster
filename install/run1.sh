#!/bin/sh
# export HOSTNAME=""


hostnamectl set-hostname $HOSTNAME

sudo vi /etc/hosts

# Need to add a 192.168.2.10 entry to hosts file
sudo apt-get update
sudo apt-get install haproxy keepalived -y
chmod +x check_apiserver.sh
sudo cp check_apiserver.sh /etc/keepalived/
# Create a backup
sudo cp /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf-bak
# truncate it
sudo sh -c '> /etc/keepalived/keepalived.conf'
sudo cat keepalived.conf2 >> /etc/keepalived/keepalived.conf
sudo vi /etc/keepalived/keepalived.conf

sudo cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg-bak

sudo cat haproxy.cfg2 >> /etc/haproxy/haproxy.cfg

sudo vi /etc/haproxy/haproxy.cfg

