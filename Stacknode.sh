#!/bin/bash

# Running a testnet node

sudo apt-get install build-essential cmake libssl-dev pkg-config git -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env

wget https://bitcoin.org/bin/bitcoin-core-0.20.1/bitcoin-0.20.1-x86_64-linux-gnu.tar.gz
tar -xvf bitcoin-0.20.1-x86_64-linux-gnu.tar.gz
sudo cp ~/bitcoin-0.20.1/bin/* /usr/local/bin/

git clone https://github.com/blockstack/stacks-blockchain.git
cd stacks-blockchain

cargo build --workspace --release --bin stacks-node
target/release/stacks-node xenon
