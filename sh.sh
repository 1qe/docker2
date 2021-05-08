apt-get update
export DEBIAN_FRONTEND=noninteractive
apt-get install -y openssh-server jupyter python3-pip git npm
npm install -g n
n lts
PATH=$PATH
npm install -g npm@latest
