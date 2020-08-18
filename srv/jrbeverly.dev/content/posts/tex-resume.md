+++
author="jrbeverly"
title="tex-resume"
date="2018-03-30"
description="jrbeverly.tex.resume is a resume written using the Awesome-CV LaTeX template."
tags=["jrbeverly"]
+++
# jrbeverly.tex.resume

## Summary

jrbeverly.tex.resume is a resume written using the Awesome-CV LaTeX template. **This project is now deprecated.** and the content is now outdated.

## Description

The resume is developed using LaTeX, a high-quality typesetting system. After browsing existing LaTeX templates, I settled on `Awesome-CV` as a starting point for constructing a resume. Adjustments were made to the template to add support for Gitlab, Skillset and Projects. The standard layout of the template was compacted to provide more space for the experience and project sections. This project was deprecated with the development of the more standardized HTML resume, `jrbeverly.resume`.

## Development

If you are developing on Windows, it is recommended to install the IDE [Texmaker](http://www.xm1math.net/texmaker/), the universal LaTeX editor. This will ensure that the necessary TeX Live packages are installed (or can be installed). The IDE Texmaker is the default IDE used in development of the project.

### Building

You can build the resume using `xelatex`. To build with `xelatex`, you can either install TeX Live (or some variant) in your environment, or make use of the docker-based build scripts. To start using the docker build scripts, you will need to install [`docker`](https://www.docker.com/). To get started, run the following:

```console
sh build/container-run.sh

cd src/
xelatex resume.tex
```

It is recommend to use the build scripts available in `build/`. These scripts are used in the build pipeline, ensuring that all arguments and attributes are set for compilation of the TeX project. The output pdf is available at the project root, while other build files are available in the `output/` directory. To build with `docker`, run the following:

```console
sh build/container-build.sh
```

To build with `xelatex`, you can do the following:

```console
xelatex resume.tex
```

## Awesome-CV

The project is pulled from the `Awesome-CV` LaTeX template. Awesome CV is LaTeX template for a CV(Curriculum Vitae), Résumé or Cover Letter inspired by Fancy CV. It is easy to customize your own template, especially since it is really written by a clean, semantic markup. You can view it [here](https://github.com/posquit0/Awesome-CV).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [K from the Noun Project](https://thenounproject.com/term/rocket-ship/456769/).