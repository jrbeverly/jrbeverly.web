---
author: "jrbeverly"
title: "slim-docker-with-gitlab"
date: "2019-10-05T20:39:56Z"
description: "Experimenting with using docker-slim to shrink docker images"
tags: ["cardboardci"]
summary: |
  A GitlabCI repository designed to experiment with potential avenues for minimizing the size of a build image.
---

| Experimenting with using docker-slim to shrink docker images | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/cardboardci/slim-docker-with-gitlab) |
| :-------- | -------: |


# Minimizing Docker Builds

## Summary

A GitlabCI repository designed to experiment with potential avenues for minimizing the size of a build image.

## Notes

* Experiment with flags from `docker:1.13` for minimizing the process
* Compress the build-context that is sent to the daemon (`compress`)
* Squash the layers using the `--squash` flag
* Experiment with the tool `docker-slim` for shrinking the build image
* Issues with permissions on the tooling are preventing deployment in Gitlab