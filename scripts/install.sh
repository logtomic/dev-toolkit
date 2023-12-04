#!/bin/bash

# Install Rust and Cargo via rustup.rs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Add Rust binaries to the PATH (you might need to restart your shell or run `source $HOME/.cargo/env` after this)
export PATH="$HOME/.cargo/bin:$PATH"

# Install necessary Ubuntu dependencies
sudo apt-get update
sudo apt-get install -y libssl-dev pkg-config cmake

# Use cargo to install nushell and starship


# Set up nushell as needed (create a basic configuration file)
echo "[alias]
ls = 'ls | to ls --color auto -F'" > $HOME/.config/nu/config.toml

# Display a message indicating the installation is complete
echo "Installation completed. You can now use 'nu' and 'starship'."

# Optionally, you might want to restart your shell to apply changes
# exec $SHELL
