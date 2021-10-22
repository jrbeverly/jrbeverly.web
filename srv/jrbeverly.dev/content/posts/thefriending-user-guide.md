+++
author="jrbeverly"
title="user-guide"
date="2017-05-31T22:07:15Z"
description="The Friending user manual provided as a web resource generated from the user manual."
tags=[
  "conversion",
  "html",
  "latex",
  "pdf2htmlex",
  "org:thefriending"
]
+++

# Friending User Guide

## Summary

The Friending user manual provided as a web resource generated from the user manual.  The user guide provides info and tips to help you understand the mobile application as a web resource, instead of the standard PDF representation of the user manual.  The method used to convert the user manual can be viewed in the `build/` directory.

## Friending

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or signing up for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The project focused on the development of a user manual around a fictional matchmaking application called Friending.  The application centered around user-created questionnaires that could be used to find relationship matches.  The user manual was designed with the goal of deceiving the reader into believing that the application existed.  A project vision document and set of user requirements guided the development of scenarios and use cases for the application.   The user manual created for the requirements specification project is provided in this repository, available as a standalone HTML page.

## Build

You can build the standalone HTML page using `pdf2htmlEX`.  To build with `pdf2htmlEX`, you can either install `pdf2htmlEX` in your environment, or make use of the docker image.  To start the docker image, run the following:

```console
sh start.sh
```

You can then use `pdf2htmlEX` as such:

```console
pdf2htmlEX --zoom 1.5 --embed cfijo --dest-dir public/ index.pdf
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the HTML page.  The scripts handle the process of downloading the user manual from source, allowing it to be converted from PDF to HTML without losing text or format.

```console
sh compile.sh
```

### Build Parameters

| Variable | Default | Description |
| --- | --- |  --- | --- |
| ARTIFACT_URL | see [`.gitlab-ci.yml`](.gitlab-ci.yml) | The URL hosting the friending user manual. |

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Stefan Hartmann from the Noun Project](https://thenounproject.com/term/like/201300/).