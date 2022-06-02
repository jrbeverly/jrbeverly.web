+++
author="jrbeverly"
title="exp-pulumi-lambda"
date="2022-05-18T00:40:54Z"
description="Experimenting with Pulumi for Lambda, S3 Website & Fargate"
tags=["org:jrbeverly"]
+++

# Experimenting with Pulumi

Experimenting with the pulumi examples from https://github.com/pulumi/examples, and the options to have

# Notes

- Enabling Bazel wtih this model encountered some pain points
- Pulumi is capable of performing operations like Docker Build / Referencing lambda binaries
- The change source pattern (`git.dirty, git.author, etc`) for volatile status is a nice pattern
- Building of artifacts should not be the responsibility of the deployment model
- Pulumi takes over the _context_ element of deployments, and use that for deployments

Pulumi has some nice elements too it with respect to be able to use code to create the deployment, as well as a good web/console interface. However I'm not sold on the idea of these kind of "dynamic" systems, and instead prefer the style of an _application model_. This way a series of concerns can be baked into "Configuration" that is then acted upon, similar to Terraform.

### Idea on Notes

Basics of this components are:
- Volatile Status - Properties about the change that aren't really related to the software artifacts - Git SVC, Git Commit, Manifest Version, GitHub PR URL, etc
- Artifact Manifest - Software artifacts created as part of the build process
- Application Manifest(s) - What is the calver/semver of the application system
- Deployment Artifacts - Software artifacts created as part of the build process for deploying the service
- Application Model - Model of the application, and the various ways it can be assembled or connected to components (Graph relations with optional components and multiple vertex sets)

Ideally something like this:

volatile_status.json:
```json
{
    "exec": "cli",
    "git": {
        "author": "Jonathan Beverly",
        "author.email": "...",
        "committer": "Jonathan Beverly",
        "committer.email": "...",
        "dirty": true,
        "head": "ec3d5a5a63251dd884634e25b1f98c9be6b4b912",
        "headName": "refs/heads/main",
    },
    "vcs": {
        "kind": "github.com",
        "owner": "jrbeverly",
        "repo": "exp-pulumi-lambda"
    }
}
```

artifact.manifest.yaml:
```yaml
apiVersion: openapplicationmodel/v1alphav1
kind: Manifest
metadata:
  name: pulumi-lambda
  labels:
    app: pulumi
    service: xyz
    property: xyss
spec:
  artifacts:
    - id: 946debe2-e213-11ec-8fea-0242ac120002
    - id: e213ebe2-946d-8fea-11ec-200020242ac1
```

lambda.appmanifest.yaml:
```yaml
apiVersion: openapplicationmodel/v1alphav1
kind: AppManifest
metadata:
  name: pulumi-lambda
  labels:
    app: pulumi
    service: xyz
    property: xyss
spec:
    id: 946debe2-e213-11ec-8fea-0242ac120002
    filename: lambda.tar
    sha256: ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad
    annotations:
        app: lambda
```

Then these artifact components will need some sort of spec for defining how to combine these various components. Additionally this spec should be oriented as something that tools can generate, which would allow for dynamic deployment processes by simply generating the spec, then publishing it to a service for performing the deployment. Similar to how pulumi is doing the deployment, but instead requiring it to resolve all properties & actions it would perform (e.g. `terraform plan`), then require it to execute the plan.
