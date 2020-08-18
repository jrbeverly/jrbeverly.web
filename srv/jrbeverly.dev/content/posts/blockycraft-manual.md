+++
author="jrbeverly"
title="blockycraft-manual"
date="2018-11-1"
description="Blockycraft is an interactive graphics demo to create a Minecraft inspired demo."
tags=["blockycraft"]
+++
# Blockycraft Manual

## Summary

Blockycraft is an interactive graphics demo to create a Minecraft inspired demo.  Blockycraft is focused on a series of graphics techniques create the graphical aethestics of a Minecraft world.  This involves the usage of Perlin Noise for a dynamic world, lighting and shadows based on the positions of blocks in the world, and the aesthetic of the block world.  The Blockycraft Manual explains the Blockycraft project in terms of interactive, compilation and technical components.

## Blockycraft

Blockycraft is an interactive demo that uses standard first person controls to navigate through a block world. Blockycraft is a interactive graphics demo to create a Minecraft inspired demo which revolves around breaking and placing blocks. The game world is composed of rough cubes arranged in a fixed grid pattern and representing different materials, such as dirt, stone, and snow.  The techniques used in the demo can be toggled using keyboard commands.  The Blockycraft project involves an OpenGL C++ interaction demo that can be viewed at [Blockycraft](https://gitlab.com/jrbeverly-blockycraft/blockycraft).

## Development

If you are developing on Windows, it is recommended to install the IDE [Texmaker](http://www.xm1math.net/texmaker/), the universal LaTeX editor.  This will ensure that the necessary TexLive packages are installed (or can be installed).  The IDE Texmaker is the default IDE used in development of the project.

### Building

You can build the image using `latexmk`.  To build with pdf2htmlEX, you can either install pdf2htmlEX in your environment, or make use of the docker image.  To start the docker image, run the following:

```console
sh start.sh
```

To build with `latexmk`, you can do the following: 

```console
latexmk -pdf manual.tex
```

It is recommend to use the build scripts available in `build/`.   These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the TeX project.  The output pdf `manual.pdf` is available at the project root, while other build files are available in the `output/` directory.

```console
sh build/compile.sh
```

### GitLab CI

This project's manual is built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps defined in [`.gitlab-ci.yml`](.gitlab-ci.yml).  The build scripts are available in `build/`, which are used to compile the TeX file.

## Acknowledgements

The project icon is retrieved from [kenney.nl](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon uses assets by [Kenney from kenney.nl/](http://kenney.nl/assets/voxel-pack).