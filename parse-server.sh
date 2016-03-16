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

export PARSE_DASHBOARD_ALLOW_INSECURE_HTTP=1

mongod --dbpath /db & 
parse-server & 
cd parse-dashboard && npm run dashhboard
