#!/bin/bash

# Update apt cache
sudo apt update

# Install curl and git
sudo apt install -y curl git

# Run a Docker installation script
curl -fsSL https://raw.githubusercontent.com/mreisroot/debian-docker-instance/main/docker-setup.sh | bash

# Clone the kong-docker-pgsql repository, which contains a container stack for deploying Kong
git clone https://github.com/mreisroot/kong-docker-pgsql

# Go to the cloned repo's directory
cd kong-docker-pgsql

# Make sure the repo's shell scripts are executable
chmod 755 *.sh

# Deploy the container stack
./up.sh
