+++
author="jrbeverly"
title="CardboardCI"
tags=["cardboardci"]
+++

|  A collection of docker images for use in continuous integration. | [![GitHub](https://img.shields.io/badge/repository-github-blue.svg)](https://github.com/cardboardci/) |
| :-------- | -------: |

## Summary

A collection of docker images that provide a common core for use in continuous integration.

The idea of these images is to balance the following:

- Frequency of updates
- Standard set of tooling
- Common Environment

## Background Notes

I encountered a lot of difficult with trying to automate the updating of those docker images. GitLab does not really have the idea of `bots`. Instead it would require a personal access token for my account, if I wanted to make commits. I didn't like, as that would grant access to pretty much every one of my repositories. At the time I was self-hosting Gitlab, so I opted to just create additional users that would be my bots. 

Having a bot user worked pretty well, in the sense that a scheduled Gitlab repository would execute the updates. However, at that time the building of each image was a burden on my local self-hosted CI machine. When I opted to use Gitlab.com instead of self-hosted, I ended up abandoning the idea of automated upgrading.

Later on when I was doing some more work in the frontend realm, I found that I didn't like working with the available docker images. They fit into a couple categories:

- Very big
- Dependencies I did not like/want
- Slow update schedule

That is when I decided to move my docker images into a separate project called `CardboardCI`. The hope was a set of small images, with automated updates and a standard set of dependencies (`jq/zip/tar/etc`). These images were based on alpine, until ubuntu released minimal images (~35MB). At that time I started the process of moving them over to ubuntu.

### GitHub Actions

When GitHub Actions became available, I noticed that you would be able to use the `GITHUB_TOKEN` to commit against the repository itself. This meant you could define a workflow that checked for updates, and if existed, create a pull request with those updates.

In essence, you would be able to roll your own dependabot. I thought this would be ideal for CardboardCI, and moved it from GitLab to GitHub.
