echo "Debian setup"
sudo apt update

echo "Making install scripts executable"
chmod +x *.sh 

echo "Installing Git"
sudo apt install -y git

./install-docker.sh
