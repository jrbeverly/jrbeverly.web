+++
author="jrbeverly"
title="jrbeverly-gitlab-io"
date="2019-09-26"
description="jrbeverly.gitlab.io is a clean and minimalist digital card."
tags=["jrbeverly"]
+++
# jrbeverly.gitlab.io

## Summary

[https://jrbeverly.gitlab.io/](https://jrbeverly.gitlab.io/) is a clean and minimalist digital card.  Working like a business card, the website keeps links to social media and various online personas.

## GitLab CI

This project's static Pages are built by [GitLab CI](https://about.gitlab.com/gitlab-ci/), following the steps
defined in [`.gitlab-ci.yml`](.gitlab-ci.yml):

```
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

## GitLab User or Group Pages

To use this project as your user/group website, you will need one additional
step: just rename your project to `namespace.gitlab.io`, where `namespace` is
your `username` or `groupname`. This can be done by navigating to your
project's **Settings**.

Read more about [user/group Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages) and [project Pages](http://doc.gitlab.com/ee/pages/README.html#project-pages).

## Template

The webpage is based on the template designed by [mRova](http://www.mrova.com) available [here](http://www.mrova.com/free-one-page-responsive-html-resume-template/).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Nice and Serious from the Noun Project](https://thenounproject.com/term/link/89021/).