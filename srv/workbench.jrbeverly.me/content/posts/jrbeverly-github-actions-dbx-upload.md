+++
author="jrbeverly"
title="github-actions-dbx-upload"
date="2021-08-28T22:26:52Z"
description="Testing publishing to Dropbox programatically"
tags=["org:jrbeverly"]
+++

# github-actions-dbx-upload

Publishing to Dropbox programmatically from GitHub Actions with the intentions to mirror the model of AWS S3 publishing.

## Notes

Exploring how one might leverage Dropbox as an artifact storage source, with an authentication model that is similar to AWS. Setting up the initial Dropbox Application to get the tokens for publishing was a bit more involved than useful, and I suspect the process of rotating these tokens might be a pain too.

When the system is setting up and going, it works fairly well. The user interface & sharing features of Dropbox fit well with an artifact storage system. The fixed billing plans (& reasonable free limit) make it an appealing option for use in comparison to an IaaS like AWS/GCloud/Azure.

The authentication & publishing process for this is similar to other options (like AWS S3), it would be possible to use it in a way that creates a common interface that allows easy switching between the two as artifact publishing sources like so:

```yaml
      - name: Configure Dropbox Credentials
        uses: ./.github/actions/configure-dropbox-credentials
        with:
          dropbox-access-key-id: ${{ secrets.DROPBOX_ACCESS_KEY_ID }}
          dropbox-secret-access-key: ${{ secrets.DROPBOX_SECRET_ACCESS_KEY }}
          dropbox-session-token: ${{ secrets.DROPBOX_SESSION_TOKEN }} 

      - name: Upload to artifacts
        uses: ./.github/actions/upload-artifacts-to-dropbox
        with:
          path: packages/
          folder: artifacts/blockycraft/${GITHUB_SHA}
```

vs

```yaml
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.DROPBOX_ACCESS_KEY_ID }}
          aws-access-key-id: ${{ secrets.DROPBOX_SECRET_ACCESS_KEY }}
          aws-session-token: ${{ secrets.DROPBOX_SESSION_TOKEN }} 

      - name: Upload to artifacts
        uses: aws-actions/upload-artifacts-to-s3 # Doesn't exist, but using as stub
        with:
          path: packages/
          folder: artifacts/blockycraft/${GITHUB_SHA}
```