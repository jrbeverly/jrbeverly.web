+++
author="jrbeverly"
title="exp-circleci-orbs"
date="2019-10-30"
description="Experimenting with CircleCI Orbs for running types of workflows"
tags=["experimentation"]
+++
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