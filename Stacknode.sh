#!/bin/bash

# Running a testnet node

sudo apt-get install build-essential cmake libssl-dev pkg-config git -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

git clone https://github.com/blockstack/stacks-blockchain.git
cd stacks-blockchain

cargo build --workspace --release --bin stacks-node
target/release/stacks-node xenon
