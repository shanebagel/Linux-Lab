# Linux Server:

#!/bin/bash
sudo su --login root
usermod -aG wheel shane
echo "server1.smhcomputers.com" > /etc/hostname
echo "192.168.124.110 server1.smhcomputers.com server1" >> /etc/hosts
echo "192.168.124.120 server2.smhcomputers.com server2" >> /etc/hosts
echo "export LESS="-X"" >> ~/.bashrc
echo "export VISUAL=vim" >> ~/.bashrc
echo "export EDITOR="$VISUAL"" >> ~/.bashrc
exec bash
yum install -y bash-completion docker vim python 
yum update && yum upgrade -y
mandb
reboot

# Linux Server 2:

#!/bin/bash
sudo su --login root
usermod -aG wheel shane
echo "server2.smhcomputers.com" > /etc/hostname
echo "192.168.124.110 server1.smhcomputers.com server1" >> /etc/hosts
echo "192.168.124.120 server2.smhcomputers.com server2" >> /etc/hosts
echo "export LESS="-X"" >> ~/.bashrc
echo "export VISUAL=vim" >> ~/.bashrc
echo "export EDITOR="$VISUAL"" >> ~/.bashrc
exec bash
yum install -y bash-completion docker vim python 
yum update && yum upgrade -y
mandb
reboot
