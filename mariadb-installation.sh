#!/bin/sh

#Win Tun Hlaing(https://www.youtube.com/channel/UCz9ebjc-_3t3p49gGpwyAKA/videos)

#http://www.mmuak.net


#Necessary Update for system packages
dnf update -y 

#Necessary Package installation for database server
dnf install -y mariadb-server unzip wget make mariadb

#Get start database services
systemctl start mariadb

#Get enable database services
systemctl enable mariadb

#desibling SELINUX module
sed -i --follow-symlinks 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/sysconfig/selinux

#configure mysql initial configuration
mysql_secure_installation

#Restarting system
reboot
