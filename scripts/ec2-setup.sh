#!/bin/bash
set -euo pipefail

echo "Installing Docker on Ubuntu EC2..."
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker "$USER"

echo "Docker installed. Log out and back in, then run: docker run hello-world"
