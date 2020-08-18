+++
author="jrbeverly"
title="docker-sonarr"
date="2018-07-10"
description="Sonarr is a PVR for Usenet and BitTorrent users."
tags=["docker"]
+++
# Dockerized Sonarr

## Summary

[Sonarr](https://sonarr.tv/) is a PVR for Usenet and BitTorrent users. It can monitor multiple RSS feeds for new episodes of your favorite shows and will grab, sort and rename them. It can also be configured to automatically upgrade the quality of files already downloaded when a better quality format becomes available. The project icon is from [cre.ativo mustard, HK from the Noun Project](docs/icon/icon.json)

**NOTE: This image is marked EOL, and use is discouraged.**

## Usage

You can use this image locally with `docker run`, but it is suggested to use [docker-compose](https://docs.docker.com/compose/) to setup the environment.

```console
docker run -d -p 8989:8989 -v /srv/sonarr/config/:/var/sonarr/config/ -v /srv/sonarr/data/:/var/plex/config/ jrbeverly/sonarr
```

### Docker-compose

Using the simple `docker-compose.yml` file below:

```yaml
sonarr:
  image: jrbeverly/sonarr
  ports:
    - "8989:8989"
  volumes:
    - /srv/sonarr/config/:/var/sonarr/config/
    - /srv/sonarr/data/:/var/sonarr/data/
```

You can then use `docker-compose` to start the environment:

```console
docker-compose up -d
```

## Image Tags

Build tags available with the image `jrbeverly/sonarr:{TAG}`.

| Tag | Status | Description |
| --- | ------ | ----------- |
| [![Version latest][latest-badge]][latest-link] | [![Image latest][latest-image-badge]][latest-link] | An docker image with the latest version of sonarr installed. |

## Components

### Metadata Arguments

Metadata build arguments used in the system, the follow the [Label Schema Convention](http://label-schema.org).

| Variable | Value | Description |
| -------- | ----- |------------ |
| BUILD_DATE | see [metadata.variable](Makefile.metadata.variable) | The Date/Time the image was built. |
| VERSION | see [metadata.variable](Makefile.metadata.variable) | Release identifier for the contents of the image. |
| VCS_REF | see [metadata.variable](Makefile.metadata.variable) | Identifier for the version of the source code from which this image was built. |

### Build Arguments

Build arguments used in the system.

| Variable | Value | Description |
| -------- | ----- |------------ |
| DUID | see [user.variable](Makefile.user.variable) | The [user id](http://www.linfo.org/uid.html) of the docker user. |
| DGID | see [user.variable](Makefile.user.variable) | The [group id](http://www.linfo.org/uid.html) of the docker user's group. |
| SONARR_URL | see [app.variable](Makefile.app.variable) | Sets the application download URL to use when building the image. |

### Volumes

Volumes exposed by the docker container.[^1]

| Volume | Description |
| ------ | ----------- |
| /var/sonarr/config/ | The Sonarr configuration directory. |
| /var/sonarr/data/ | The Sonarr data directory. |

### Ports

Ports exposed by the docker container.

| Port | Description |
| ---- | ----------- |
| 8989 | Access to the Sonarr Web interface. |

### Environment Variables

Environment variables used in the system.

| Variable | Value | Description |
| -------- | ----- |------------ |
| HOME | / | The pathname of the user's home directory. |

## Build Process

To build the docker image, use the included [`Makefile`](Makefile). It is recommended to use the makefile to ensure all build arguments are provided.

```
make build
```

You can also build the image manually, as visible in [`Makefile`](Makefile).  However this is discouraged as the makefile ensures all build arguments are properly formatted.

## Labels

The docker image follows the [Label Schema Convention](http://label-schema.org).  The values in the namespace can be accessed by the following command:

```console
docker inspect -f '{{ index .Config.Labels "org.label-schema.LABEL" }}' IMAGE
```

The label namespace `io.gitlab.jrbeverly` is common among `jrbeverly-docker` images and is a loosely structured set of values.  The values in the namespace can be accessed by the following command:

```console
docker inspect -f '{{ index .Config.Labels "io.gitlab.jrbeverly.LABEL" }}' IMAGE
```

## User and Group Mapping

All processes within the docker container will be run as the **docker user**, a non-root user.  The **docker user** is created on build with the user id `DUID` and a member of a group with group id `DGID`.  

Any permissions on the host operating system (OS) associated with either the user (`DUID`) or group (`DGID`) will be associated with the docker user.  The values of `DUID` and `DGID` are visible in the [Build Arguments](#build-arguments), and can be accessed by the commands:

```console
docker inspect -f '{{ index .Config.Labels "io.gitlab.jrbeverly.user" }}' IMAGE
docker inspect -f '{{ index .Config.Labels "io.gitlab.jrbeverly.group" }}' IMAGE
```

The notation of the build variables is short form for docker user id (`DUID`) and docker group id (`DGID`). 

[^1]: It is necessary to ensure that the **docker user** (`DUID`) has permission to access volumes. (see [User / Group Identifiers](#user-and-group-mapping))

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Creative Commons By 3.0](https://creativecommons.org/licenses/by/3.0/).

The project icon is by [cre.ativo mustard from the Noun Project](https://thenounproject.com/term/docker/676618/).