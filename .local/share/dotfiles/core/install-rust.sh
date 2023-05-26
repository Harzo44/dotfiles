#!/bin/sh

if command -v cargo && command -v rustc; then
    echo "Rust already installed, skipping"
    exit 0
fi

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. $HOME/.cargo/env
