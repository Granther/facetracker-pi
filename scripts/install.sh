#!/bin/bash

# Update
echo "--- Updating system ---"
apt update

# Install packages
apt install git -y

echo "--- Install python's camera package ---"
apt install python3-picamera2 -y

echo "--- Clone git repo down ---"
git clone https://github.com/Granther/facetracker-pi /etc/facetracker-pi

echo "--- Place systemd facetracker service file ---"
cp /etc/facetracker-pi/systemd/facetracker.service /etc/systemd/system/
chmod +x /etc/facetracker-pi/publisher/run.sh
systemctl daemon-reload

echo "--- Make sure its enabled ---"
systemctl enable facetracker

echo "--- Start facetracker service ---"
systemctl start facetracker

echo "--- Video feed should be available at ---"
