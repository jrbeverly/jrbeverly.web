+++
author="jrbeverly"
title="Infraprints"
tags=["infraprints"]
+++

|  Terraform modules that defined very opinionated architecture. | [![GitHub](https://img.shields.io/badge/repository-github-blue.svg)](https://github.com/infraprints) |
| :-------- | -------: |

## Summary

Opinionated Cloud Architecture.

Infraprints is a collection of terraform modules that defined very opinionated architecture. Each module tries to express intent, and a strictly defined purpose for the resources. This helps prevent the fragile architecture designs.

## Motivations

While doing a lot of cloud development work I have found that when the modules provide a lot of customization potential, it results in these very fragile deployments. This is just anecdotal, but I wanted to do something to help alleviate this problem for myself. The problem I would encounter looks something like this:

- Resource A relies on Feature X being disabled on Resource B
- Resource B has Feature X disabled
- The terraform module defining Resource `B` does not expect Feature `X` to be disabled

Since terraform does not evaluate all constraints on a resource at plan time, changes that break these constraints either will not be noticed until apply. In the worse case, these requirements will yield a silent error. Sometimes this occurs because the modules hide away complexity, but do not account for special cases (encryption being the one I find most issues with).

In the other side of it, I have found a lot of custom built infrastructure. A module may exist already in the wild, but instead a custom solution is used. Most often these lack strictly defined metadata, so things like 'Where is this IAM key used?', 'What project is this S3 bucket used for?', 'Who do I contact about resource X?', 'S3 bucket XYZ is visibile to account 123412341234, who is that and why?'.

A couple ways I want to resolve this with infraprints:

- Have the modules be very opinionated about how they are supposed to be used
- If they do not need to be opinionated, make them very simple
- Support the use case of forking the repository (to ensure clones are pinned)
- Support the use case of putting the module on a fileshare (s3 / etc)