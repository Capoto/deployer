#!/bin/bash

ryu-manager mininet/simple_switch.py &
cd compiler
python compiler.py > ../deploy_time
cd ../mininet
sudo ./topology.py >> ../deploy_time
cd ..
sudo mn -c
