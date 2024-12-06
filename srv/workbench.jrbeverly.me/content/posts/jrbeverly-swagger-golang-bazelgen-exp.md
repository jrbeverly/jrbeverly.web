---
author: "jrbeverly"
title: "swagger-golang-bazelgen-exp"
date: "2022-05-19T00:58:15Z"
description: "json with schema"
tags: ["jrbeverly"]
summary: |
  Fiddling with an idea of generating models from the OpenAPI spec for YAML.
---

| json with schema | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/swagger-golang-bazelgen-exp) |
| :-------- | -------: |


# Golang & OpenAPI Spec

Fiddling with an idea of generating models from the OpenAPI spec for YAML.

## Notes

- Bazel model works, but would want to formalize as a proper build system
- Model of `pkg/apis/...` is a good direction, version selecting will need to be a thing though
- What about YAML Support?
- Is `swagger` the expected way forward for this kind of thing?
- Should the generation of files be done as a `bazel run` or a bazel build?
- Generation should really commit against the repository, that way we can be more confident about the code results
- Works much better to have all components available
