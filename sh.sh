apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y openssh-server jupyter python3-pip git

jupyter-notebook --generate-config
mv jupyter_notebook_config.py .jupyter/

git config --global user.name "191840239"
git config --global user.email "191840239@smail.nju.edu.cn"
git remote remove origin
git remote add origin git@git.nju.edu.cn:191840239/docker2f.git

echo root:123456 | chpasswd
echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
chmod +x natfrp
sed -i s@/archive.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
sed -i s@/security.ubuntu.com/@/mirrors.ustc.edu.cn/ubuntu/@g /etc/apt/sources.list
