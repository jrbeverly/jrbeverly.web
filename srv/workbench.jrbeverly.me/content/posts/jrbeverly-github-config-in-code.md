---
author: "jrbeverly"
title: "github-config-in-code"
date: "2022-03-02T02:14:31Z"
description: "Fiddling with the github folder conventions"
tags: ["jrbeverly"]
summary: |
  Fiddling with the configuration options available for GitHub, while encoding the properties in the `.github` directory.
---

| Fiddling with the github folder conventions | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/github-config-in-code) |
| :-------- | -------: |


# GitHub Configuration in Code

Fiddling with the configuration options available for GitHub, while encoding the properties in the `.github` directory.

## Getting Started

This repository 

The concept is to create an almost "self-contained" repository, that includes within hidden directories like `.github/.aws/.azure/.gcp/etc` that represent almost "interfaces" between the repository and external services that would act on it. This way rather than having the repository rely on assumptions about how it is configured, it is instead providing all the baseline elements for any supporting infrastructure (e.g. operators) to provide these integrations themselves.

Examples of these include:
- GitHub Labels
- GitHub Secrets from External Stores (e.g. source from aws)
- Dependabot
- CodeQL
- Repository Settings
- License Data

To get the full list of all "initial" baseline constraints for this, I explored the use of https://github.com/ossf/scorecard to identify potential concerns that would exist in the repository.

## Notes


A collection of "best practices" were collected at: https://bestpractices.coreinfrastructure.org/en/criteria. These can be summarized roughly as the following, with the full list contained under [docs/CRITERIA.md](docs/CRITERIA.md):

- Use fuzzing (fuzz testing) for programs  (see https://github.com/google/oss-fuzz)
- Published process for reporting vulnerabilities in the repository
- Provide a working build system that can automatically rebuild the software from source code
- General policy that tests will be added to an automated test suite (new functionality)
- Apply at least one static code analysis tool (beyond compiler warnings and safe language modes)
- Provide should contain licensing configuration
- Provide documentation in the form of API Reference, Examples & "basics"
- Project should support some means of organizing for discussion
- To enable collaborative review, the project's source repository MUST include interim versions for review between releases; it MUST NOT include only final releases.
- Impose a versioning system on the release of artifacts (do not pin `latest`)
- Provide release notes with changes
- and so on


Some of these practices are setting a baseline, which I think can be useful, but don't exactly map perfectly to how I'd think about this. However the overall idea of a "Standard" with clear set of criteria (programmatic if possible) sounds like a positive option for these kinds of repositories.

Overall think this is a worthwhile idea to continue with, having repositories be "self-contained". I think some of the components could be split out of `.github` into other standards, then leveraging automation to populate the approach components in the `.github/` directory. Examples could include things like:

- Having the "artifacts" published by a repository defined in repository
- Having the "secrets" needed for the build process encoded in repository
- Using Content/Unique Addressable Storage for dependencies/tools to avoid specifying where artifacts must be sourced (so they can pull from authoritative or mirror)
- CODEOWNERS leveraging an RBAC model for the repository, rather than inheriting the implementation of the service (e.g. how GitHub teams are "done")
- IDE Related components working to externalize the dependency installation into repository pre-baked images
