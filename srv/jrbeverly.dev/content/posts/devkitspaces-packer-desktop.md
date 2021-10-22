+++
author="jrbeverly"
title="packer-desktop"
date="2018-11-02T00:52:23Z"
description="This build configuration installs the vagrant-desktop environments onto minimal ubuntu images that can be used with Virtualbox."
tags=[
  "desktop-environment",
  "infrastructure-as-code",
  "packer",
  "simple",
  "template",
  "org:devkitspaces"
]
+++

# Packer Desktop

## Summary

This build configuration installs the `vagrant-desktop` environments onto minimal ubuntu images that can be used with Virtualbox.

## Getting Started

Make sure all the required software (listed above) is installed, then you can build the images as follows:

```bash
# cd x11/
# cd opengl/
# cd base/
packer build ubuntu.json
```

After a few minutes, Packer should tell you the image was generated successfully.

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Arthur Schmitt from the Noun Project](https://thenounproject.com/term/package/18159/).