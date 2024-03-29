#! /bin/sh

sudo apt-get install tmux
sudo apt-get install strace -y
sudo apt-get install ltrace -y

sudo apt-get install python3
sudo apt install vim

sudo apt-get -y install \ bash \ coreutils \ grep \ iproute 2 \ iputils-ping \ traceroute \ tcpdump \ bind 9-dnsutils \ dnsmasq-base \ netcat-openbsd \ python 3 \ curl \ wget \ iptables \ procps \ isc-dhcp-client
sudo apt -y install git
sudo apt -y install gedit
sudo apt -y install gcc
sudo apt-get install ghex -y
sudo apt-get install binutils -y
sudo apt-get install libgtk2.0-0:i386 -y
sudo apt-get install libxxf86vm1:i386 -y
sudo apt-get install libsm6:i386 -y
sudo apt-get install lib32stdc++6 -y

#
cd ../
git clone https://github.com/radare/radare2
cd radare2
sudo sys/install.sh

#
cd ../
wget http://sourceforge.net/projects/dex2jar/files/dex2jar-2.0.zip
unzip dex2jar-2.0.zip
cd dex2jar-2.0
chmod u+x ./*.sh

# Change /path/to/ part depends on the env.
export PATH=$PATH:/path/to/dex2jar

#
../
wget http://jd.benow.ca/jd-gui/downloads/jd-gui-0.3.5.linux.i686.tar.gz
# Change /path/to/ part depends on the env.
tar zxvf jd-gui-0.3.5.linux.i686.tar.gzexport PATH=$PATH:/path/to/jd-gui
