+++
author="jrbeverly"
title="blockycraft"
date="2018-11-1"
description="Blockycraft is a Minecraft inspired Block Engine."
tags=["blockycraft"]
+++
# Blockycraft

---

# Summary

Blockycraft is an interactive demo that uses standard first person controls to navigate through a block world. Blockycraft is a interactive graphics demo to create a Minecraft inspired demo which revolves around breaking and placing blocks. The game world is composed of rough cubes arranged in a fixed grid pattern and representing different materials, such as dirt, stone, and snow. The techniques used in the demo can be toggled using keyboard commands. The Blockycraft project is written using C++ and OpenGL.

## Development

The Blockycraft project is something I really enjoyed making, but want to refactor before releasing the project publicliy. The project started as a hack & slash project for an assignment and envolved in ways that was not very clean. The retake of the project involves recoding from scratch with clean documentation and better code. The old codebase is not open source available.

### Building

You can build the project using `cmake`. It is recommend to use the build scripts available in `build/`. These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the project. The output is available at the project root under `bin/`. To build with `cmake`, you can either install it in your environment, or make use of the docker image available in `build/`. To start the docker image, run the following:

```console
sh build/start.sh
```

To build with `cmake`, you should first generate the `include/` folder for GLFW:

```console
cd dep/glew
make extensions
```

You can then build by doin the following:

```console
cmake ..
make
```

```console
sh build/compile.sh
```

### GitLab CI

This project is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml). The build scripts are available in `build/`, which are used to compile the project.

## Acknowledgements

The Blockycraft project makes use of the [`Kenny Voxel Pack`](http://kenney.nl/assets/voxel-pack), both in the source and to construct the project icons. The pack contains textures, items and characters that can be used to create both 2D and 3D block games. The pack can be accessed from [`kenney.nl/`](http://kenney.nl/assets/voxel-pack).