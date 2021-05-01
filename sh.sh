apt-get update
apt-get install -y openssh-server jupyter python3-pip git >/dev/null

jupyter-notebook --generate-config >/dev/null
mv jupyter_notebook_config.py .jupyter/

mkdir .ssh && mv id_rsa* .ssh/
chmod 600 .ssh/id_rsa
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

echo root:123456 | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
chmod +x natfrp
sed -i s@/archive.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
sed -i s@/security.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
