+++
author="jrbeverly"
title="jrbeverly.github.io"
date="2018-10-11"
description="jrbeverly.github.io is a clean and minimalist digital card."
tags=["jrbeverly"]
+++
# jrbeverly.github.io

## Summary

[jrbeverly.github.io](https://jrbeverly.github.io/) is a clean and minimalist digital card. Working like a business card, the website keeps links to social media and various online personas.

The page also acts as a redirect to my primary website: [jrbeverly.me](https://jrbeverly.me)

## Github Pages

This project's static pages are built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```yaml
pages:
  stage: deploy
  script:
  - echo 'No action needed.'
  artifacts:
    paths:
    - public
  only:
  - master
```

The project is designed to be in compliance with [Gitlab Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Nice and Serious from the Noun Project](https://thenounproject.com/term/link/89021/).