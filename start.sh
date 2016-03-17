ip = `dig +short myip.opendns.com @resolver1.opendns.com`

echo "{
  "apps": [
    {
      "serverURL": "http://$ip:1337/parse",
      "appId": "$PARSE_SERVER_APPLICATION_ID",
      "masterKey": "$PARSE_SERVER_MASTER_KEY",
      "appName": "MyApp"
    }
  ],
  "users": [
    {
      "user":"user",
      "pass":"pass"
    }
  ]
}" > parse-dashboard/config.json

mongod --dbpath /db & 
parse-server & 
cd parse-dashboard && npm start -- --config config.json --port 4040 --allowInsecureHTTP=1
