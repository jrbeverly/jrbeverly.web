---
author: "jrbeverly"
title: "profile"
date: "2018-11-02T00:52:26Z"
description: "This is a one page user profile for Jonathan Beverly (jrbeverly - i.e. me)."
tags: ["jrbeverly"]
summary: |
  This is a one page user profile for Jonathan Beverly (jrbeverly - i.e. me), linking to multiple online identities, relevant external sites, and popular social networking websites. Not all of them are included, but most of the relevant ones are.
---

| This is a one page user profile for Jonathan Beverly (jrbeverly - i.e. me). | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/profile) |
| :-------- | -------: |


# jrbeverly.profile

## Summary

This is a one page user profile for Jonathan Beverly (jrbeverly - i.e. me), linking to multiple online identities, relevant external sites, and popular social networking websites. Not all of them are included, but most of the relevant ones are.

## Build Process

The process of minimizing the web resources is handled using the command line utility of [`Minify`](https://github.com/tdewolff/minify) which is available [here](https://github.com/tdewolff/minify/tree/master/cmd/minify). The process is used manually as opposed to leveraging a specific build system, is to experiment with more granular controls for website compilation.

### Why not minify with ___?

The static pages are minified using [`Minify CLI`](https://github.com/tdewolff/minify/tree/master/cmd/minify) for the simple reason of tinkering. I wanted to be able to fiddle with various ways of optimizing a static HTML project, and a one page user profile project seemed to be the perfect fit.

## Deployment

The static pages can be downloaded from the pipeline artifacts, which can then be run on any web server. For example, using it with Gitlab Pages can be done by creating the project `jrbeverly.gitlab.io`. The `.gitlab-ci.yml` of the `jrbeverly.gitlab.io` project can download the artifacts, and deploy the artifacts to gitlab.io.

Read more about [user/group Pages](http://doc.gitlab.com/ee/pages/README.html#user-or-group-pages) and [project Pages](http://doc.gitlab.com/ee/pages/README.html#project-pages).

## Template

The webpage is based on the template designed by [mRova](http://www.mrova.com) available [here](http://www.mrova.com/free-one-page-responsive-html-resume-template/).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Daniel Gamage from the Noun Project](https://thenounproject.com/term/network/49138/).