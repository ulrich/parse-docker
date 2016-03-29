# parse-docker

## Guide

Deploy instantly to Docker Cloud :

[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)


Build image with MongoDB + [Parse-Server](https://github.com/ParsePlatform/parse-server/) + [Parse-Dashboard](https://github.com/ParsePlatform/parse-dashboard/) with one line :
```
docker build github.com/didierfranc/parse-docker
```

Use Automated Build from Docker Hub :

```
docker run -e PARSE_SERVER_APPLICATION_ID='appId' \
           -e PARSE_SERVER_MASTER_KEY='masterKey' \
           -e PARSE_DASH_USER='dashboardUsername' \
           -e PARSE_DASH_PASS='dashboardPassword' \
           -p 1337:1337 \
           -p 4040:4040 \
           didierfranc/parse-docker
```

## Version

#### parse-server 
[![npm version](https://img.shields.io/npm/v/parse-server.svg?style=flat)](https://www.npmjs.com/package/parse-server)  
  
#### parse-dashboard 
[![npm version](https://img.shields.io/npm/v/parse-dashboard.svg?style=flat)](https://www.npmjs.com/package/parse-dashboard)

### Last Build

**29/03/2016**
