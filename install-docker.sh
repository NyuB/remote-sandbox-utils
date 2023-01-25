echo ""
echo "==== Installing Docker (from https://docs.docker.com/engine/install/debian/ instructions) ====>"
echo "    Setting up docker package repository"
sudo apt install -y gnupg lsb-release ca-certificates
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

echo "    Installing Docker-Engine"
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "    Adding current user to docker group (you may need to reboot or refresh groups' statuses to use docker without sudo)"
sudo groupadd docker

echo "    Enabling docker daemon to run on boot"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
echo "    ==== Installed Docker <====
