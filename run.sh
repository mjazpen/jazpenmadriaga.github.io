#!/bin/bash

# Create a directory and navigate to it
mkdir sacabot_ws
cd sacabot_ws

# Update package list and install git
sudo apt update
sudo apt install git

# Clone the depthai_blazepose repository
git clone https://github.com/geaxgx/depthai_blazepose.git

# Clone the sacabot repository
git clone https://github.com/mjazpen/sacabot.git

# Navigate to the sacabot directory
cd sacabot

# Make setup.sh executable and run it
chmod +x setup.sh
./setup.sh

# Navigate back to the main directory
cd ..

# Navigate to the depthai_blazepose directory
cd depthai_blazepose

# Install the required Python packages
python3 -m pip install -r requirements.txt

