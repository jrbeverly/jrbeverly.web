+++
author="jrbeverly"
title="git-timeline"
date="2020-01-04T01:26:48Z"
description="Adjust the time of a series of commits in a git repository"
tags=[
  "git",
  "git-commit-format"
]
+++

# Git Timeline

Allows bulk modification of the commit dates of a repository, changing the history of a repository.

## Usage

```bash
# Creates the demo repository
./git-timeline.bash clone

# Copies the demo repository to the working environment
./git-timeline.bash working

# Exports the history of the git repository to files
./git-timeline.bash history
```

You can then edit the dates of the three files emitted:

- `FIRST` - The first commit to the repository
- `HISTORY` - The commit history
- `LATEST` - The most recent commit to the repository

After you have done this, you can then run `apply` and `show`:

```bash
./git-timeline.bash apply
./git-timeline.bash show
```

If you are finding it difficult to get the right timelines (or just working with the scripts), you can use `cycle` to start fresh, and re-apply. This does not alter the modified time files.
