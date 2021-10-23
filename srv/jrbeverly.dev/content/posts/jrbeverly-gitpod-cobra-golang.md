+++
author="jrbeverly"
title="gitpod-cobra-golang"
date="2021-07-12T19:10:27Z"
description="Experimenting with using GitPod for Golang CLI apps with Cobra"
tags=["org:jrbeverly"]
+++

# GitPod Golang CLI

Leveraging GitPod for prototyping out a golang cli that interfaces with AWS.

## Notes

- The `.gitpod.yml` file must exist in the root directory
- Dockerfile(s) for the environment can be specified in its own directory (`.gitpod`)
- Commands can be run on start-up, ensuring that the build is working as expected
- GitHub Permissions required to make changes to GitHub Actions workflows
- GitHub Permissions required for a series of commit/pull request based actions
- Workspaces can be provisioned/stopped/cleaned up on-demand
- Docker works on the provisioned nodes
- Extensions & Other components are defined by the `.gitpod.yml` file

In comparison, the code-server approach is to bake all the dependencies into the same image that is running code-server itself. This means that extensions/settings/etc can be baked onto the image that are common across projects. If working in Docker, it requires a bit more process to work with other docker processes (running on same `docker network`, matching file system paths, etc).

GitPod lacks the Progress Web App (PWA) experience that code-server has, which is unfortunate as its very helpful to treat it as if it were its own application.