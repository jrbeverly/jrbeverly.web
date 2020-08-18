+++
author="jrbeverly"
title="make-exp"
date="2018-12-12"
description="Experimenting with a build-harness style of makefiles"
tags=["experimentation"]
+++
# Makefile Experiments

## Summary

Experimenting with using makefiles as a build harness type structure. The idea is to package `makefile` using GitHub, that can then be downloaded when running.

## Conceptual Usage

As the structure is simply an experiment, no targets are actually implemented. At the top of the Makefile, you can include the makefile using the following:

```Makefile
-include $(shell curl -sSL -o .build-system "https://.../makefile"; echo .build-system)
```

This will download a Makefile called .build-system and include it at run-time. Once it has been successfully downloaded, you can run `make help` for a lsit of available targets.

## Limitations

Although the targets for a library are included, that doesn't mean that any dependencies are included. For example, if a makefile library relies on non-standard binaries (e.g. `jq`, `awscli`, `docker`), then they would need to be installed on the local environment.

I have found this doesn't scale that well, especially for dependencies that are frequently updated (pre-1.0.0). It does have a bit of advantage in scrapping together quick and dirty build systems when working with Dev-Ops style work (docker, terraform, ansible, packer). As I have found it pretty nice to get useful commands out of the box (and readily available with `make help`).

## Inspiration

These experiments are inspired by [cloudposse/build-harness](https://github.com/cloudposse/build-harness).
