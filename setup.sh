cd "$(dirname "$0")"
chmod +x ./start-docker.sh
# Install docker
sudo apt-get --assume-yes remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get --assume-yes install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get --assume-yes install docker-ce docker-compose
sudo usermod -aG docker anna
