#!/bin/bash

# navigate to app folder
cd /app

#!/bin/bash

# Update apt package index
apt update -y

# Install curl
apt install curl -y

# Download and execute NodeSource setup script for Node.js 18.x
curl -sL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh
bash /tmp/nodesource_setup.sh

# Install Node.js, build-essential, and git
apt install -y nodejs build-essential git

# Add Yarn repository key
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

# Add Yarn repository to package sources
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Update apt package index again
apt-get update
apt-get install npm -y
# Install Yarn
apt-get install -y yarn

# Cleanup
rm /tmp/nodesource_setup.sh

echo "Installation complete."
apt install nginx -y
ufw allow 'Nginx HTTP'
