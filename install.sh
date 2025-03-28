#!/bin/bash

# Exit on error
set -e

# Install sudo
echo "Install sudo"
apt update && apt install sudo -y

echo "Updating package lists..."
sudo apt update -y

# Install required dependencies
echo "Installing dependencies..."
sudo apt install -y curl wget git

# Install Neovim
echo "Installing Neovim..."
sudo apt install -y neovim

# Install Zsh
echo "Installing Zsh..."
sudo apt install -y zsh
chsh -s $(which zsh)

# Install Starship
echo "Installing Starship..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Install gpg and eza
sudo apt install -y gpg
sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

# Symlink
ln -s .config/zsh/.zshrc .zshrc
ln -s .config/vim/.vimrc .vimrc
ln -s .config/zsh/.zsh .zsh

echo "Installation complete! Please restart your terminal."
