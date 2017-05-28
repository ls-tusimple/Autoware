#Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update
sudo apt-get install docker-ce -y

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb

# Test nvidia-smi
#nvidia-docker run --rm nvidia/cuda nvidia-smi

# Restart
echo "\n=================="
echo "Reboot your machine, and verify docker by \"sudo docker run hello-world\""
echo "Reboot your machine, and verify docker by \"sudo docker run hello-world\""
echo "Reboot your machine, and verify docker by \"sudo docker run hello-world\""


