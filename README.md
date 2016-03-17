# parse-docker

## Guide

- Deploy instantly to Docker Cloud :

[![Deploy to Docker Cloud](https://files.cloud.docker.com/images/deploy-to-dockercloud.svg)](https://cloud.docker.com/stack/deploy/)


- Build MongoDB + [Parse-Server](https://github.com/ParsePlatform/parse-server/) + [Parse-Dashboard](https://github.com/ParsePlatform/parse-dashboard/) with one line :
```
docker build github.com/didierfranc/parse-docker
```

- Use Automated Build from Docker Hub :

```
docker run -e PARSE_SERVER_APPLICATION_ID='yourAppId' -e PARSE_SERVER_MASTER_KEY='yourMasterKey' -p 1337:1337 -p 4040:4040 didierfranc/parse-docker
```
