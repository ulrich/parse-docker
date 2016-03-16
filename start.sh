echo '{
  "apps": [
    {
      "serverURL": "http://localhost:1337/parse",
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
}'


echo '{
  "apps": [
    {
      "serverURL": "http://localhost:1337/parse",
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
}' > parse-dashboard/config.json

mongod --dbpath /db & 
parse-server & 
cd parse-dashboard && npm start -- --config config.json --port 4040 --allowInsecureHTTP=1
