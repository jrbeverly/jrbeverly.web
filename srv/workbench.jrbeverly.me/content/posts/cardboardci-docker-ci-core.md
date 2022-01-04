+++
author="jrbeverly"
title="docker-ci-core"
date="2019-10-27T02:27:12Z"
description="A base ubuntu image for CI images to work off."
tags=["org:cardboardci"]
+++

# CI Core

CI-core is a special Docker image that is configured for running in CI environments. It is Ubuntu, with:

- A docker user
- A directory workspace
- Mechanisms for running build tools (json, web requests, etc)