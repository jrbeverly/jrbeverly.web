---
author: "jrbeverly"
title: "ci-alpine"
date: "2017-05-31T23:02:24Z"
description: "[DEPRECATED] A super small image with basic development libraries installed. "
tags: ["cardboardci"]
summary: |
  
---

| [DEPRECATED] A super small image with basic development libraries installed.  | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/cardboardci/ci-alpine) |
| :-------- | -------: |


# Docker Alpine Base

## Summary

A super small image with basic development libraries installed. The project icon is from [cre.ativo mustard, HK from the Noun Project](docs/icon/icon.json)

**NOTE: This image is marked EOL, and use is discouraged.**

## Usage

You can use this image locally with `docker run`, calling `sh` to enter the container:

```bash
docker run -it -v /media/:/media/ jrbeverly/alpine:edge sh
```

### Gitlab

You can setup a build job using `.gitlab-ci.yml`:

```yaml
compile:
  image: jrbeverly/alpine:edge
  script:
    - echo "Hello world"
```

## Components

### Metadata Arguments

Metadata build arguments used with the [Label Schema Convention](http://label-schema.org).

| Variable | Value | Description |
| -------- | ----- |------------ |
| BUILD_DATE | see [metadata.variable](build/Makefile.metadata.variable) | The Date/Time the image was built. |
| VERSION | see [metadata.variable](build/Makefile.metadata.variable) | Release identifier for the contents of the image. |
| VCS_REF | see [metadata.variable](build/Makefile.metadata.variable) | Identifier for the version of the source code from which this image was built. |

### Build Arguments

Build arguments used in the image.

| Variable | Value | Description |
| -------- | ------- |------------ |
| USER | see `Makefile.options` | Sets the [user](http://www.linfo.org/uid.html) to use when running the image. |
| DUID | see [user.variable](info/Makefile.user.variable) | The [user id](http://www.linfo.org/uid.html) of the docker user. |
| DGID | see [user.variable](info/Makefile.user.variable) | The [group id](http://www.linfo.org/uid.html) of the docker user's group. |

### Volumes

No volumes are exposed by the docker container. However, while running the image with limited permissions (`baseimage`), it is necessary to ensure that the **docker user** has permission to access mounted volumes. You will need to ensure that the **docker user** can read/write to the mounted volumes.

The working directory of the image is `/media/`.

## Build Process

To build the docker image, use the included [`Makefile`](build/Makefile). It is recommended to use the makefile to ensure all build arguments are provided.

```bash
make VERSION=<version> build
```

You can view the [`build/README.md`](build/README.md) for more on using the `Makefile` to build the image.

## Labels

The docker image follows the [Label Schema Convention](http://label-schema.org). Label Schema is a community project to provide a shared namespace for use by multiple tools, specifically `org.label-schema`. The values in the namespace can be accessed by the following command:

```bash
docker inspect -f '{{ index .Config.Labels "org.label-schema.<LABEL>" }}' jrbeverly/alpine
```

### Label Extension

The label namespace `org.doc-schema` is an extension of `org.label-schema`. The namespace stores internal variables often used when interacting with the image. These variables will often be application versions or exposed internal variables. The values in the namespace can be accessed by the following command:

```bash
docker inspect -f '{{ index .Config.Labels "org.doc-schema.<LABEL>" }}' jrbeverly/alpine
```

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Creative Commons By 3.0](https://creativecommons.org/licenses/by/3.0/).

The project icon is by [cre.ativo mustard from the Noun Project](https://thenounproject.com/term/docker/676618/).