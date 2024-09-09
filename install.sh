#!/bin/bash

# Helpers
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install zsh
if command_exists zsh; then 
    echo "zsh already installed"
else
    sudo apt update && sudo apt install -y zsh
    if [ $? -eq 0 ]; then
        chsh -s "$(which zsh)"
    else
        echo "Failed to install zsh"
        exit 1
    fi
fi

# Install starship
if command_exists starship; then 
    echo "starship already installed"
else
    curl -fsSL https://starship.rs/install.sh | sudo sh
    if [ $? -ne 0 ]; then
        echo "Failed to install starship"
        exit 1
    fi
fi

# Create config directory
mkdir -p "$HOME/.config"

# Copy files
cp starship.toml "$HOME/.config/starship.toml"
cp .antigen.zsh "$HOME/.antigen.zsh"
cp .zshrc "$HOME/.zshrc"

echo "Installation and configuration complete."