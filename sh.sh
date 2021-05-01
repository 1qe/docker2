apt-get update
apt-get install -y openssh-server jupyter python3-pip git

jupyter-notebook --generate-config
mv jupyter_notebook_config.py .jupyter/

echo root:123456 | chpasswd
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
chmod +x natfrp
sed -i s@/archive.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
sed -i s@/security.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
