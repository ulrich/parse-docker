if [ -z $DOCKERCLOUD_NODE_FQDN ]
then
  ip=$DOCKERCLOUD_NODE_FQDN
else
  ip=`dig +short myip.opendns.com @resolver1.opendns.com`
fi

config='{
  "apps": [
    {
      "serverURL": "http://ip:1337/parse",
      "appId": "id",
      "masterKey": "key",
      "appName": "MyApp"
    }
  ],
  "users": [
    {
      "user":"dashuser",
      "pass":"dashpass"
    }
  ]
}'

config=${config/ip/$ip}
config=${config/id/$PARSE_SERVER_APPLICATION_ID}
config=${config/key/$PARSE_SERVER_MASTER_KEY}
config=${config/dashuser/$PARSE_DASH_USER}
config=${config/dashpass/$PARSE_DASH_PASS}

echo $config > parse-dashboard/config.json

mongod --dbpath /db & 
parse-server & 
cd parse-dashboard && npm start -- --config config.json --port 4040 --allowInsecureHTTP=1
