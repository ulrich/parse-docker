# MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update && apt-get install -y mongodb-org dnsutils && mkdir /db

# Parse-Server
npm install -g parse-server

# Parse-Dashboard
git clone https://github.com/ParsePlatform/parse-dashboard.git
cd parse-dashboard && npm install
npm run prepublish
