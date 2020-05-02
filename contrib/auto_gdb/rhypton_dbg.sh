#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.rhyptoncore/rhyptond.pid file instead
rhypton_pid=$(<~/.rhyptoncore/testnet3/rhyptond.pid)
sudo gdb -batch -ex "source debug.gdb" rhyptond ${rhypton_pid}
