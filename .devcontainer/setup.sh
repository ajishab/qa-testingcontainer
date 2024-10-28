#!/bin/bash

# Update package lists
sudo apt-get update

# Install basic dependencies
sudo apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libgbm1 \
libpangocairo-1.0-0 libpango-1.0-0 libgtk-3-0 libxcomposite1 libxrandr2 libasound2 libxtst6

# Install additional missing dependencies for Playwright
sudo apt-get install -y \
    libwoff1 \
    libvpx7 \
    libopus0 \
    libgstreamer-gl1.0-0 \
    libgstreamer-plugins-bad1.0-0 \
    libwebpdemux2 \
    libharfbuzz-icu0 \
    libhyphen0 \
    libmanette-0.2-0 \
    libflite1 \
    libgles2-mesa

# Clean up package cache
sudo apt-get clean

# Install Playwright globally and install its browsers
npm install -g playwright && npx playwright install-deps
npx playwright install
