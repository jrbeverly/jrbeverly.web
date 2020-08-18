+++
author="jrbeverly"
title="docker-deluge"
date="2018-07-10"
description="Deluge is a lightweight, Free Software, cross-platform BitTorrent client."
tags=["docker"]
+++
# Dockerized Deluge

[Deluge](http://deluge-torrent.org/) is a lightweight, Free Software, cross-platform BitTorrent client. The project icon is from [cre.ativo mustard, HK from the Noun Project](docs/icon/icon.json)

**NOTE: This image is marked EOL, and use is discouraged.**

## Usage

It is suggested to use [docker-compose](https://docs.docker.com/compose/) to setup the environment.
You can see a simple `docker-compose.yml` file below:

```yaml
deluge:
  container_name: deluge
  image: jrbeverly/deluge
  hostname: deluge  
  ports:
    - "8112:8112"
    - "58846:58846"
  volumes:
    - /etc/localtime:/etc/localtime:ro
    - /srv/deluge/data/:/var/deluge/data
    - /srv/deluge/downloads/:/var/deluge/downloads
  labels:
    - "ca.jrbeverly.env=simple"
```

You can then use `docker-compose` to start the environment:

```console
docker-compose up -d
```

## Volumes

Volumes exposed by the docker container.[^1]

| Volume | Description |
| --------------------------| ------------- |
| /var/deluge/data | The Deluge data directory. |
| /var/deluge/downloads | The root directory containing downloaded files. |

## Ports

Ports exposed by the docker container.

| Port | Description |
| --------- | --------- |
| 8112 | Web interface |
| 58846 | Deluge daemon |

## Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| ---------- | -------- | --------------- |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |
| DUID | 6800 | The [user id](http://www.linfo.org/uid.html) of the docker user. |
| DGID | 6802 | The [group id](http://www.linfo.org/uid.html) of the docker user's group. |
| UNAME | webuser | The user name of the docker user. |
| GNAME | webuser-group | The group name of the docker user's group. |
| S6_OVERLAY_VERSION | v1.18.1.5 | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |

## Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| ---------- | -------- | --------------- |

### User and Group Mapping

All processes within the docker container will be run as the **docker user**, a non-root user.  The **docker user** is created on build with the user id `DUID` and a member of a group with group id `DGID`.  

Any permissions on the host operating system (OS) associated with either the user (`DUID`) or group (`DGID`) will be associated with the docker container.  The values of `DUID` and `DGID` are visible in the [Build Arguments](#Build-Arguments), and can be accessed by the the command:

```console
docker inspect -f '{{ index .Config.Labels "user" }}' $IMAGE
docker inspect -f '{{ index .Config.Labels "group" }}' $IMAGE
```

The notation of the build variables is short form for docker user id (`DUID`) and docker group id (`DGID`).

[^1]: It is necessary to ensure that the **docker user** (`DUID`) has permission to access volumes. (see [User / Group Identifiers](#User-and-Group-Mapping)

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Creative Commons By 3.0](https://creativecommons.org/licenses/by/3.0/).

The project icon is by [cre.ativo mustard from the Noun Project](https://thenounproject.com/term/docker/676618/).