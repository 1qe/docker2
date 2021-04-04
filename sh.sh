apt-get update
apt-get install -y openssh-server
echo root:123456 | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
chmod +x natfrp
