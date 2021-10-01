#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.helleniccoincore/helleniccoind.pid file instead
export LC_ALL=C

helleniccoin_pid=$(<~/.helleniccoincore/testnet3/helleniccoind.pid)
sudo gdb -batch -ex "source debug.gdb" helleniccoind ${helleniccoin_pid}
