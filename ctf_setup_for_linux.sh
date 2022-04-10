#! /bin/sh

sudo apt-get install strace -y
sudo apt-get install ltrace -y

git clone https://github.com/radare/radare2
cd radare2
sudo sys/install.sh

sudo apt-get install ghex -y

sudo apt-get installbinutils -y

wget http://sourceforge.net/projects/dex2jar/files/dex2jar-2.0.zip
unzip dex2jar-2.0.zip
cd dex2jar-2.0
chmod u+x ./*.sh

# Change /path/to/ part depends on the env.
export PATH=$PATH:/path/to/dex2jar

sudo apt-get install libgtk2.0-0:i386 -y
sudo apt-get install libxxf86vm1:i386 -y
sudo apt-get install libsm6:i386 -y
sudo apt-get install lib32stdc++6 -y

wget http://jd.benow.ca/jd-gui/downloads/jd-gui-0.3.5.linux.i686.tar.gz
# Change /path/to/ part depends on the env.
tar zxvf jd-gui-0.3.5.linux.i686.tar.gzexport PATH=$PATH:/path/to/jd-gui
