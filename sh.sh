apt-get update
apt-get install -y openssh-server jupyter 

jupyter-notebook --generate-config >/dev/null


echo root:123456 | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
chmod +x natfrp
sed -i s@/archive.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
sed -i s@/security.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
