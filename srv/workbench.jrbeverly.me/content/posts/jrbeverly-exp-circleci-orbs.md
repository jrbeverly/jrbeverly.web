---
author: "jrbeverly"
title: "exp-circleci-orbs"
date: "2019-10-30T02:21:11Z"
description: "Experimenting with CircleCI Orbs for running types of workflows"
tags: ["jrbeverly"]
summary: |
  Experimenting with CircleCI Orbs for reducing code re-use in templates
---

| Experimenting with CircleCI Orbs for running types of workflows | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/exp-circleci-orbs) |
| :-------- | -------: |


# Experimenting with CircleCI Orbs

Experimenting with CircleCI Orbs for reducing code re-use in templates

## Usages

**cp**
Deploy to S3

```yml
orbs:
  awscli: jrbeverly/awscli@0.0.5
version: 2.1
workflows:
  Deploy to S3:
    jobs:
      - awscli/aws-copy-to:
          bucket: hello-bucket
          namespace: some/terraform
          source: some/path
```

**sync**
Deploy to S3

```yml
orbs:
  awscli: jrbeverly/awscli@0.0.5
version: 2.1
workflows:
  Deploy to S3:
    jobs:
      - awscli/aws-sync-to:
          bucket: hello-bucket
          namespace: some/terraform
```