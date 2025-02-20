#!/bin/bash

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install Protobuf Compiler
sudo apt install -y protobuf-compiler

# Install Rust
echo "Installing Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#sudo apt install screen -y
source $HOME/.cargo/env
export PATH="$HOME/.cargo/bin:$PATH"

# Start a screen session for Nexus node
#screen -S nexus -d -m bash -c "echo 'Nexus Node is running...'; exec bash"

# Install Nexus CLI
sudo apt update && sudo apt install -y build-essential libssl-dev pkg-config zlib1g-dev && RUST_BACKTRACE=1 curl https://cli.nexus.xyz/ | sh

echo "Nexus Node setup complete."

