apt update
export DEBIAN_FRONTEND=noninteractive
apt install -y openssh-server jupyter python3-pip git npm
npm install -g n ijavascript
ijsinstall
n lts
PATH=$PATH
npm install -g npm@latest
apt remove nodejs npm -y
