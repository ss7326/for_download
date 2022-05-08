#! /bin/bash

echo "Is this time first drive for this script? (y | n)"
read CHECK

echo "upgrade start"
apt update -y
apt upgrade -y

echo "install vim"
apt install -y vim

echo "install ssh"
ssh_var1="#PermitRootLogin .*"
ssh_var2="PermitRootLogin no"
apt install -y openssh-server
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.orig
sed -i -e "s/$ssh_var1/$ssh_var2/g" /etc/ssh/sshd_config
systemctl enable ssh
systemctl restart ssh

sudo apt-get -y install \ bash \ coreutils \ grep \ iproute 2 \ iputils-ping \ traceroute \ tcpdump \ bind 9-dnsutils \ dnsmasq-base \ netcat-openbsd \ python 3 \ curl \ wget \ iptables \ procps \ isc-dhcp-client
sudo apt -y install git
sudo apt -y install gedit
