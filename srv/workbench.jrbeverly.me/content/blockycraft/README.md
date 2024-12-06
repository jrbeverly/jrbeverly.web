+++
author="jrbeverly"
title="Blockycraft"
date="2017-09-1"
description="Blockycraft is a Minecraft inspired Block Engine."
tags=["blockycraft"]
+++

|  Blockycraft is a Minecraft inspired Block Engine. | [![GitHub](https://img.shields.io/badge/repository-github-blue.svg)](https://github.com/jrbeverly/blockycraft) |
| :-------- | -------: |


# Summary 

Blockycraft is an interactive demo that uses standard first person controls to navigate through a block world. The game world is composed of rough cubes arranged in a fixed grid pattern and representing different materials, such as dirt, stone, and snow. The techniques used in the demo can be toggled using keyboard commands. The Blockycraft project is written using C++, OpenGL and SDL.

## Development

The Blockycraft project is something I really enjoyed making. The build process (& dependency management) was prety painful, and if I was to work on a project like this again, I would most likely stick to a game engine that fit a fast-iteration model better.

The project was built for CS488 at the University of Waterloo, and built within a month. The first completed version of the codebase was essentially just a `main.cpp` file. This made it really difficult to do anything useful, as it was difficult to know which part impacted which.

When I started the refactor, I decided to incorporate components from existing sources to try and buff up the codebase. The retake of the project aimed to fix some of my pet peeves with the project, while also not being a rewrite. The old codebase is not open source available.

For example, the original `ChunkList` would throw Segmentation faults when you attempted to interact with anything _outside_ the boundaries. This was mostly resolved by incorporating the `Ring` concept from fogleman/Craft.

Recently I opened up the old developer machine I used for development, and recorded a [youtube video](https://youtu.be/M7InBKpsrac).

## Screenshot

[![Blockycraft World Screenshot](./img/blockycraft-world.png)](https://github.com/jrbeverly/blockycraft-manual)
