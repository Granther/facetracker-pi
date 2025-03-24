#!/bin/bash

# Update
echo "--- Updating system ---"
apt update -y

# Install packages
apt install git -y;

echo "--- Install python's camera package ---"
apt install python3-picamera2 -y;

echo "--- Clone git repo down ---"
git clone https://github.com/Granther/facetracker-pi /etc/

echo "--- Place systemd facetracker service file ---"
cp /etc/facetracker-pi/systemd/facetracker.service /etc/systemd/system/
systemctl daemon-reload

echo "--- Make sure its enabled ---"
systemctl enable facetracker
