+++
author="jrbeverly"
title="experiment-docker-slim"
date="2019-10-05"
description="Experimenting with using docker-slim to shrink docker images"
tags=["docker"]
+++
# Minimizing Docker Builds

## Summary

A GitlabCI repository designed to experiment with potential avenues for minimizing the size of a build image.

## Notes

* Experiment with flags from `docker:1.13` for minimizing the process
* Compress the build-context that is sent to the daemon (`compress`)
* Squash the layers using the `--squash` flag
* Experiment with the tool `docker-slim` for shrinking the build image
* Issues with permissions on the tooling are preventing deployment in Gitlab