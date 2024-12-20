---
author: "jrbeverly"
title: "vagrant-desktop-opengl"
date: "2017-05-31T22:52:23Z"
description: "[DEPRECATED] A base OpenGL Desktop environment, sandboxed on your local computer."
tags: ["blockycraft"]
summary: |
  Provide a method of reproducible graphical development environments based on Linux. This repository provides a base OpenGL Desktop environment, sandboxed on your local computer. The repository is meant for experimenting with OpenGL related programming in a virtual machine.
---

| [DEPRECATED] A base OpenGL Desktop environment, sandboxed on your local computer. | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/blockycraft/vagrant-desktop-opengl) |
| :-------- | -------: |


# Vagrant OpenGL Desktop

## Summary

Provide a method of reproducible graphical development environments based on Linux.  This repository provides a base OpenGL Desktop environment, sandboxed on your local computer. The repository is meant for experimenting with OpenGL related programming in a virtual machine.

## Getting Started

You can use this locally with `vagrant up`, calling as such:

```bash
vagrant --name=mydesktop up
```

However It is recommended to use the script `create.sh` for the first run to ensure all necessary arguments are provided. The provided arguments creates a `settings.yaml`, storing the settings for the machine.  You can create the machine by calling:

```bash
sh create.sh -n mydesktop -d ubuntu
```

If you want more information about the script `create.sh`, you can do so by calling:

```bash
sh create.sh -h
```

### Parameters

The parameters are used in the calling of `vagrant up`, primarily as `vagrant [OPTIONS] up`.  After provisioning the environment, a settings file (`setting.yaml`) is created, which stores the provided parameters.

| Name | Type | Description |
| ---  | ---  | ---         |
| name | `string` | Name of the provisioned desktop environment |
| desktop | `filename` | The name of the desktop provisioning script.  These scripts are present in [`packaging/environments`](src/packaging/environments). |

The vagrant environment is based on the `bento/ubuntu` images.  If the timezone is not set, the provision script will attempt to auto-detect the timezone using [`tzupdate`](https://github.com/cdown/tzupdate).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Maxi Koichi from the Noun Project](https://thenounproject.com/term/package/137417).