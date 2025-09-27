#!/bin/bash
# Ubuntu Setup Script

set -e  # Stop if any command fails

echo "=== Updating system packages ==="
sudo apt update && sudo apt upgrade -y

echo "=== Installing tools ==="
sudo apt install -y \
    btop \
    tmux \
    vim \
    curl \
    openssh-client \
    openssh-server \
    neofetch \
    vlc \
    ffmpeg \
    net-tools

echo "=== Installing uv ==="
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "=== Cleaning up unused packages ==="
sudo apt autoremove -y

echo "=== Setup completed successfully ==="
