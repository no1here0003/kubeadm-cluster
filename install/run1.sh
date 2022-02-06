#!/bin/sh
# export HOSTNAME=""

# run via sudo
#
# Set the hostname using the below command
# hostnamectl set-hostname $HOSTNAME

vi /etc/hosts

# Need to add a 192.168.2.10 entry to hosts file
apt-get update
apt-get install haproxy keepalived -y
chmod +x check_apiserver.sh
cp check_apiserver.sh /etc/keepalived/
# Create a backup
cp /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf-bak
# truncate it
sh -c '> /etc/keepalived/keepalived.conf'
cat keepalived.conf2 >> /etc/keepalived/keepalived.conf
vi /etc/keepalived/keepalived.conf

cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg-bak

cat haproxy.cfg2 >> /etc/haproxy/haproxy.cfg

vi /etc/haproxy/haproxy.cfg
