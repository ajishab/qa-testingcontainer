#!/bin/bash

apt-get update && \
apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 libgbm1 libpangocairo-1.0-0 libpango-1.0-0 libgtk-3-0 libxcomposite1 libxrandr2 libasound2 libxtst6 && \
apt-get clean

npm install -g playwright && npx playwright install