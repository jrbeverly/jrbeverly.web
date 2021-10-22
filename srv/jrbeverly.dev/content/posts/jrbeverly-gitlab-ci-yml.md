+++
    author="jrbeverly"
    title="gitlab-ci-yml"
    date="2018-11-02T00:52:10Z"
    description="A collection of GitLab CI configuration files that are used by my projects."
    tags=[
  "ci",
  "ci-cd",
  "docker",
  "gitlab",
  "gitlab-ci",
  "samples",
  "templates"
]
    +++
    
# gitlab-ci.yml

A collection of GitLab CI configuration files that are used by my projects. Stored here as the process of docker projects are polished and standardized.

## Getting Started

Each of the dockerfiles is presented with a simple `.gitlab-ci.yml` file that uses one of my docker images. The resources referenced by the definition are not included in this project. You can start by copying the `.gitlab-cy.yml`, then replacing the relevant bits.

```yaml
stages:
  - build

build:
  stage: build
  image: jrbeverly/minify:baseimage
  script:
    - minify -o index-min.html index.html
  only:
    - master
  artifacts:
    paths:
      - public/
    expire_in: 1 hour
```

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Icons8 from the Noun Project](https://thenounproject.com/term/survey/50371/).