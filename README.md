# Nexus 3
[![](https://images.microbadger.com/badges/version/fxinnovation/nexus3.svg)](https://microbadger.com/images/fxinnovation/nexus3 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fxinnovation/nexus3.svg)](https://microbadger.com/images/fxinnovation/nexus3 "Get your own image badge on microbadger.com")
## Description
This repository contains the files to create a Nexus 3 OSS docker image. For more information on Nexus 3 please visit: https://www.sonatype.com/nexus-repository-oss
The docker image is based an alpine, it should be rather lightweight.

## Tags
We do NOT push a `latest` tag for this image. You should always pin a specific version for it.
We do not follow the nexus3 release tags in the docker image tags. You can always find the nexus 3 version in the Dockerfile that was used to create the image or you can use the labels.

## Usage
```
docker run -d -v [PATH_TO_DATA]:/data fxinnovation/nexus3:[TAG]
```

Default Login and Password are `admin` and `admin123` respectively.

## Labels
We set labels on our images with additional information on the image. we follow the guidelines defined at http://label-schema.org/. Visit their website for more information about those labels.

## Comments & Issues
If you have comments or detect an issue, please be advised we don't check the docker hub comments. You can always contact us through the repository.
