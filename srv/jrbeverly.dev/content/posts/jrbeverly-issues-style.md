+++
    author="jrbeverly"
    title="issues-style"
    date="2018-11-02T00:52:13Z"
    description="A style guide for issue management, release versioning, Git Flow and repository documentation."
    tags=[
  "issue-management",
  "issues",
  "markdown",
  "organization",
  "prototype",
  "pull-requests",
  "team",
  "templates"
]
    +++
    
# Issues.Style

## Summary

A style guide for issue management, release versioning, Git Flow and repository documentation.

## Description

In order to speed up the initialization process of a new gitlab project, Issues.Style provides a set of common labels and issues that might be used when setting up a new project. The project provides methods for quickly setting up the project, specifically providing the following:

* Labels - Grouped by color, according to broad themes
* Setup Issues - Initialization labels, including licensing, documentation, CI and metadata.

### Labels

The project labels can be viewed on Gitlab in the Issues > Labels section, or you can view them here in [labels.md](src/labels.md).

## Getting Started

First, make sure you have valid GitLab account tokens for both source and destination GitLab installations. They are used to access GitLab resources without authentication. GitLab private tokens are availble in "Profile Settings -> Account".

gitlab-copy is a simple tool for copying issues/labels/milestones/notes from one GitLab project to another, possibly running on different GitLab instances.

### Usage

To copy an template issues or labels, you can use the batch copy utility [`gitlab-copy`](https://github.com/gotsunami/gitlab-copy). You will need to create a YAML configuration file to be used by the gitlab utility `gitlab-copy`. You can view a sample template for copying over labels [here](src/labels.yaml). The configuration file will specify source and targets, along with the access tokens for each of the gitlab instances. The `gitlab.yml` will be of the form:

```yaml
from:
  url: https://gitlab.com
  token: ${TOKEN}
  project: jrbeverly/Issues.Style
  labelsOnly: true
to:
  url: https://gitlab.com
  token: ${TOKEN}
  project: jrbeverly/new_project
```

The above will copy just the labels from the `Issue.Styles` project. Using `gitlab-copy`, you can then copy the labels from the Issues.Style to another project. You can do this with the following command:

```bash
gitlab-copy -y gitlab.yml
```

If you would like to perform a smoke run, you can omit the `-y` flag to not execute. You can do that as such:

```bash
gitlab-copy -y gitlab.yml
```

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Desbenoit from the Noun Project](https://thenounproject.com/term/css/60411/).