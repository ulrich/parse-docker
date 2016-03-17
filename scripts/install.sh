# MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update && apt-get install -y mongodb-org curl git dnsutils build-essential
mkdir /db

# NodeJS
curl -sL https://deb.nodesource.com/setup_5.x | bash -
apt-get install -y nodejs

# Parse-Server
npm install -g parse-server

# Parse-Dashboard
npm install -g parse-dashboard
