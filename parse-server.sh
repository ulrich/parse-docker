echo '{
  "apps": [
    {
      "serverURL": "http://localhost:1337/parse",
      "appId": "$PARSE_SERVER_APPLICATION_ID",
      "masterKey": "$PARSE_SERVER_MASTER_KEY",
      "appName": "MyApp"
    }
  ]
}' > ../parse-dashboard/parse-dashboard-config.json

service mongod start && parse-server
cd parse-docker && npm run dashboard
