+++
author="jrbeverly"
title="viewdocs-autodoc"
date="2019-10-05T20:47:31Z"
description="Viewdocs is simple project documentation. It renders Markdown as simple static pages."
tags=[
  "bash",
  "experiment",
  "html",
  "markdown"
]
+++

# Viewdocs Autodoc

This was an early concept I was working with for converting metadata files (json/yml) into standard README markdown files using simple bash and templates. Ultimately I did not go in this direction, as I found that I was not making the best use of the customization yielded from using with bash + templates. A simple templating engine provided all the basics that I was ultimately after.

Below I have described some of the template concepts I was exploring at the time:

## Icon Acknowledgements

I like to use icons from thenounproject.com, which I include an acknowledgements file (`icon.json`) in projects. I was looking to take this file, and convert it into a readable markdown file. Additionally I was looking at some simple scripts for generating the icons across all projects.

## Briefs

I have been exploring having a `repository.{json|yml}` metadata file in all repositories. This would include all the header information you see on GitHub / GitLab, such as description, icon, social preview, tags, etc. The template would involve taking this data and converting it into a simple README.md that could be included in a list/aggregate site.

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [MICHAEL G BROWN from the Noun Project](https://thenounproject.com/term/clank/738702/).
