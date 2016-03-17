# parse-docker

## Guide

Build MongoDB + [Parse-Server](https://github.com/ParsePlatform/parse-server/) + [Parse-Dashboard](https://github.com/ParsePlatform/parse-dashboard/) with one line :
```
docker build github.com/didierfranc/parse-docker
```

or use Automated Build from Docker Hub :

```
docker run -e PARSE_SERVER_APPLICATION_ID='yourAppId' -e PARSE_SERVER_MASTER_KEY='yourMasterKey' -p 1337:1337 -p 4040:4040 didierfranc/parse-docker
```
