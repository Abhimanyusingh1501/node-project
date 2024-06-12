#!/bin/bash

# navigate to app folder
cd /app

# install dependencies
npm install
npm run build
cp  . /var/www/html
npm install pm2 -g
apt install yarn -y
