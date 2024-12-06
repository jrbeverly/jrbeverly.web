---
author: "jrbeverly"
title: "exp-webassembly-golang-bazel"
date: "2022-01-27T00:52:56Z"
description: "Checking exception case with syscall/js"
tags: ["jrbeverly"]
summary: |
  Experimenting with some issues encountering with WebAssembly, Golang & Bazel
---

| Checking exception case with syscall/js | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/exp-webassembly-golang-bazel) |
| :-------- | -------: |


# Experiment - WebAssembly Golang + Bazel

Experimenting with some issues encountering with WebAssembly, Golang & Bazel

# Notes

- Confirmed issue with syscall/js in the basecase with using `goos` and `goarch` (toolchains passed as orgs better option?)
- Using a genrule sufficient to workaround the case
- Base case with a simple calculator, using just base HTML
- js.Value conversions, framework wrapper to exist to handle the interop?
- Directory layout of `cmd/` and `app` feels a bit off, but does help keep the bits separate
