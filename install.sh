#!/bin/bash
set -e

echo "Updating packages and installing unzip..."
apt update -y
apt upgrade -y
apt install -y unzip software-properties-common

echo "Installing ffmpeg..."
apt update
apt install -y ffmpeg

echo "Downloading project files..."
curl -L -o /tmp/v4p.zip "https://github.com/sohag1192/O11-OTT-V4/raw/refs/heads/main/v4p.zip"
unzip /tmp/v4p.zip -d /root/o11
chmod -R 777 /root/o11
rm /tmp/v4p.zip

cd /root/o11

echo "Setting up Node.js..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash
apt install -y nodejs

echo "Installing PM2 and dependencies..."
npm install -g pm2
npm install express

echo "Starting server with PM2..."
pm2 start server.js --name licserver --silent
pm2 startup
pm2 save

echo "Running run.sh in background..."
nohup ./run.sh > /dev/null 2>&1 &
