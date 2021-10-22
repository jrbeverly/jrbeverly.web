+++
author="jrbeverly"
title="bazel-csharp-testcases"
date="2019-10-26T21:27:51Z"
description="A collection of example usages of rules_csharp for development purposes"
tags=[
  "bazel",
  "csharp",
  "dotnet",
  "rules-csharp",
  "org:jrbeverly"
]
+++

# Bazel CSharp Rules Examples

## Overview

This repository provides a set of usages for the bazel csharp rules. The idea behind these examples is to cover edge cases that are encountered during development, and provide a comprehensive test (& prototype) suite.

While working on the bazel csharp rules, I have encountered bugs or small quirks that I would like to encode records of. Some of these are very minor details, so I felt it would work best to have them as an external repository.

I defined the idea behind each program [here](docs/criteria.md).

## Setup

If you'd like to test the rules in your own repository, you can add the following to your `WORKSPACE` file to add the external repositories:

```python
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "d2l_rules_csharp",
    strip_prefix = "rules_csharp-0.6",
    urls = ["https://github.com/Brightspace/rules_csharp/archive/v0.6.tar.gz"],
)

load(
    "@d2l_rules_csharp//csharp:defs.bzl",
    "csharp_register_toolchains",
    "csharp_repositories",
)

csharp_repositories()

csharp_register_toolchains()
```

Or you can consult the minimal example in [usage/](usage/).
