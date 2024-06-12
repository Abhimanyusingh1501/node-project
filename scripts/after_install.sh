#!/bin/bash

# navigate to app folder
cd /app

# install dependencies
npm install
npm run build

npm install pm2 -g
apt install yarn -y
