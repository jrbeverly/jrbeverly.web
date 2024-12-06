---
author: "jrbeverly"
title: "github-app-golang"
date: "2021-07-16T16:57:05Z"
description: "Experiments with GitHub App written in Golang"
tags: ["jrbeverly"]
summary: |
  GitHub App written in Golang with the AWS & GitHub integrations split away, to try and encode the core 'concepts' solely into the lib/ component
---

| Experiments with GitHub App written in Golang | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/github-app-golang) |
| :-------- | -------: |


# GitHub App in Golang Prototyping

GitHub App written in Golang with the AWS & GitHub integrations split away, to try and encode the core 'concepts' solely into the lib/ component

## Notes

- Development (& Testing) should support a non-smee way of development
- How would integration/infrastructure/e2e tests work with this kind of system?
- Would it make more sense to have an OpenAPI system, with the GitHub integration performing the interface?
- Is this similar to Hubot, in that having an interface layer/service makes more sense, as it avoids the requirement for direct interface? (This can be within the system itself)
