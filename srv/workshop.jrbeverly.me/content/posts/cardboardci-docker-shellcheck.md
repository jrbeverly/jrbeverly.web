+++
author="jrbeverly"
title="docker-shellcheck"
date="2019-03-02T17:59:54Z"
description="ShellCheck is a static anaylsis tool that automatically finds bugs in your shell scripts."
tags=["org:cardboardci"]
+++

# Docker image for Shellcheck

ShellCheck is a GPLv3 tool that gives warnings and suggestions for bash/sh shell scripts:

The goals of ShellCheck are:

* To point out and clarify typical beginner's syntax issues that cause a shell to give cryptic error messages.
* To point out and clarify typical intermediate level semantic problems that cause a shell to behave strangely and counter-intuitively.
* To point out subtle caveats, corner cases and pitfalls that may cause an advanced user's otherwise working script to fail under future circumstances.

You can see the cli reference [here](https://github.com/koalaman/shellcheck).

## Usage

You can run awscli to manage your AWS services.

```bash
aws iam list-users
aws s3 cp /tmp/foo/ s3://bucket/ --recursive --exclude "*" --include "*.jpg"
aws sts assume-role --role-arn arn:aws:iam::123456789012:role/xaccounts3access --role-session-name s3-access-example
```

### Pull latest image

```bash
docker pull cardboardci/shellcheck
```

### Test interactively

```bash
docker run -it cardboardci/shellcheck /bin/bash
```

### Run basic AWS command

```bash
docker run -it -v "$(pwd)":/workspace cardboardci/shellcheck aws s3 cp file.txt s3://bucket/file.txt
```

### Run AWS CLI with custom profile

```bash
docker run -it -v "$(pwd)":/workspace -v "~/.aws/":/cardboardci/.aws/ cardboardci/shellcheck aws s3 cp file.txt s3://bucket/file.txt
```

### Continuous Integration Services

For each of the following services, you can see an example of this image in that environment:

* [CircleCI](usages/circleci)
* [GitHub Actions](usages/github)
* [GitLabCI](usages/gitlabci)
* [JenkinsFile](usages/jenkins)
* [TravisCI](usages/travisci)
* [Codeship](usages/codeship)

## Tagging Strategy

Every new release of the image includes three tags: version, date and `latest`. These tags can be described as such:

* `latest`: The most-recently released version of an image. (`cardboardci/shellcheck:latest`)
* `<version>`: The most-recently released version of an image for that version of the tool. (`cardboardci/shellcheck:1.0.0`)
* `<version-date>`: The version of the tool released on a specific date (`cardboarci/awscli:1.0.0-20190101`)

We recommend using the digest for the docker image, or pinning to the version-date tag. If you are unsure how to get the digest, you can retrieve it for any image with the following command:

```bash
docker pull cardboardci/shellcheck:latest
docker inspect --format='{{index .RepoDigests 0}}' cardboardci/shellcheck:latest
```

## Fundamentals

All images in the CardboardCI namespace are built from [cardboardci/ci-core](https://hub.docker.com/r/cardboardci/ci-core). This image ensures that the base environment for every image is always up to date. The [common base image](https://cardboardci.jrbeverly.dev/core/) provides dependencies that are often used building and deploying software.

By having a common base, it means that each image is able to focus on providing the optimal tooling for each development workflow.
