---
author: "jrbeverly"
title: "docker-surge"
date: "2019-03-02T17:59:56Z"
description: "Surge is static web publishing for Front-End Developers, right from the CLI."
tags: ["cardboardci"]
summary: |
  This is the CLI client for the surge.sh hosted service. It’s what gets installed when you run `npm install -g surge`. This CLI library manages access tokens locally and handles the upload and subsequent reporting when you publish a project using surge. You can see the cli reference [here](https://github.com/sintaxi/surge).
---

| Surge is static web publishing for Front-End Developers, right from the CLI. | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/cardboardci/docker-surge) |
| :-------- | -------: |


# Docker image for Surge

This is the CLI client for the surge.sh hosted service. It’s what gets installed when you run `npm install -g surge`.

This CLI library manages access tokens locally and handles the upload and subsequent reporting when you publish a project using surge.

You can see the cli reference [here](https://github.com/sintaxi/surge).

## Usage

You can run awscli to manage your AWS services.

```bash
aws iam list-users
aws s3 cp /tmp/foo/ s3://bucket/ --recursive --exclude "*" --include "*.jpg"
aws sts assume-role --role-arn arn:aws:iam::123456789012:role/xaccounts3access --role-session-name s3-access-example
```

### Pull latest image

```bash
docker pull cardboardci/surge
```

### Test interactively

```bash
docker run -it cardboardci/surge /bin/bash
```

### Run basic AWS command

```bash
docker run -it -v "$(pwd)":/workspace cardboardci/surge aws s3 cp file.txt s3://bucket/file.txt
```

### Run AWS CLI with custom profile

```bash
docker run -it -v "$(pwd)":/workspace -v "~/.aws/":/cardboardci/.aws/ cardboardci/surge aws s3 cp file.txt s3://bucket/file.txt
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

* `latest`: The most-recently released version of an image. (`cardboardci/surge:latest`)
* `<version>`: The most-recently released version of an image for that version of the tool. (`cardboardci/surge:1.0.0`)
* `<version-date>`: The version of the tool released on a specific date (`cardboarci/awscli:1.0.0-20190101`)

We recommend using the digest for the docker image, or pinning to the version-date tag. If you are unsure how to get the digest, you can retrieve it for any image with the following command:

```bash
docker pull cardboardci/surge:latest
docker inspect --format='{{index .RepoDigests 0}}' cardboardci/surge:latest
```

## Fundamentals

All images in the CardboardCI namespace are built from [cardboardci/ci-core](https://hub.docker.com/r/cardboardci/ci-core). This image ensures that the base environment for every image is always up to date. The [common base image](https://cardboardci.jrbeverly.dev/core/) provides dependencies that are often used building and deploying software.

By having a common base, it means that each image is able to focus on providing the optimal tooling for each development workflow.
