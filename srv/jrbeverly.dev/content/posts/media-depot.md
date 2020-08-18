+++
author="jrbeverly"
title="media-depot"
date="2017-10-05"
description="media-depot is a container based media aggregator stack."
tags=["environments"]
+++
# Media-Depot

## Summary

`media-depot` is a container based media aggregator stack.

## Getting Started

Getting started is as simple as using `docker-compose`. You can do so as such:

```bash
docker-compose up --env-file=media-depot.env -d
```

## Updating and Upgrading

If you wish to upgrade the container stack, you need to run the following commands:

```bash
docker-compose stop
docker-compose rm -v
docker-compose pull
```

You can then start the docker environment.

```bash
docker-compose up --env-file=media-depot.env -d
```

### Cleaning

After upgrading, you can be left with unused images or containers. To remove all unused containers, volumes, networks and images (both dangling and unreferenced), you can use the following command:

```bash
docker system prune
```

Running this after upgrade will ensure that any dangling images are cleaned up free up valuable disk space.

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Umar Irshad from the Noun Project](https://thenounproject.com/term/tv/169691/).