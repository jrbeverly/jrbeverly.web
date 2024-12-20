---
author: "jrbeverly"
title: "dotnet-native-corert"
date: "2019-02-03T03:52:04Z"
description: "A simple CI/CD pipeline making use of CoreRT to build native tooling."
tags: ["jrbeverly"]
summary: |
  A simple CI/CD pipeline making use of CoreRT to build linux and windows copies of a "Hello World" console application.
---

| A simple CI/CD pipeline making use of CoreRT to build native tooling. | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/dotnet-native-corert) |
| :-------- | -------: |


# .NET Core Native Compilation Experiments

A simple CI/CD pipeline making use of CoreRT to build linux and windows copies of a "Hello World" console application.

## Notes

* CoreRT currently does not support compilation cross-compilation (as it is not supported yet).
* AOT for a linux binary requires non-dotnet dependencies (that need to be installed to be base image)

At present it is likely best to use Windows docker images for building the dotnet native jobs.