#!/bin/bash

# Running a testnet node

sudo apt-get install build-essential cmake libssl-dev pkg-config git htop wget -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env



source $HOME/.cargo/env
mkdir /tmp/stacknode/
cd /tmp/stacknode/

wget https://bitcoin.org/bin/bitcoin-core-0.20.1/bitcoin-0.20.1-x86_64-linux-gnu.tar.gz
tar -xvf /tmp/stacknode/bitcoin-0.20.1-x86_64-linux-gnu.tar.gz
sudo cp /tmp/stacknode/bitcoin-0.20.1/bin/* /usr/local/bin/
sudo chmod +x /usr/local/bin/*

mkdir ~/stacks
cd ~/stacks
git clone https://github.com/blockstack/stacks-blockchain.git
cd ~/stacks/stacks-blockchain/

cargo build --workspace --release --bin stacks-node
target/release/stacks-node xenon



mkdir ~/config/
touch ~/config/bitcoin.conf

vi ~/config/bitcoin.conf

bitcoind -conf=~/config/bitcoin.conf
