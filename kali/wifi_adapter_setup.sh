# /bin/sh
apt-get update
apt-get install -y　linux-headers-generic build-essential dkms

git clone https://github.com/cilynx/rtl88x2BU_WiFi_linux_v5.3.1_27678.20180430_COEX20180427-5959.git

ver_num=$(sed -n ' s / \ PACKAGE_VERSION = "\（。* \）" / \ 1 / p ' dkms.conf) 

sudo rsync -rvhP ./ / usr / src / rtl88x2bu-$ver_num
sudo dkms add -m rtl88x2bu -v $ver_num
sudo dkms build -m rtl88x2bu -v $ver_num
sudo dkms install -m rtl88x2bu -v $ver_num
sudo modprobe 88x2bu
