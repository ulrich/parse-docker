echo '{
  "apps": [
    {
      "serverURL": "http://localhost:1337/parse",
      "appId": "$PARSE_SERVER_APPLICATION_ID",
      "masterKey": "$PARSE_SERVER_MASTER_KEY",
      "appName": "MyApp"
    }
  ]
}' > ../parse-dashboard/Parse-Dashboard/parse-dashboard-config.json

mongod --dbpath /db & 
parse-server & 
cd parse-dashboard && npm start &
