# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.205.2/containers/javascript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 16, 14, 12, 16-bullseye, 14-bullseye, 12-bullseye, 16-buster, 14-buster, 12-buster
ARG VARIANT="16-bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/javascript-node:0-${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>


ARG BAZEL_BAZEL_VERSION
ARG BAZEL_BAZEL_URL="https://github.com/bazelbuild/bazelisk/releases/download/"

ARG BAZEL_BUILDTOOLS_VERSION
ARG BAZEL_BUILDTOOLS_URL="https://github.com/bazelbuild/buildtools/releases/download/"

USER root
RUN curl -sSL "${BAZEL_BUILDTOOLS_URL}/${BAZEL_BUILDTOOLS_VERSION}/buildozer" > /usr/local/bin/buildozer && \
    curl -sSL "${BAZEL_BUILDTOOLS_URL}/${BAZEL_BUILDTOOLS_VERSION}/buildifier" >  /usr/local/bin/buildifier && \
    curl -sSL "${BAZEL_BAZEL_URL}/${BAZEL_BAZEL_VERSION}/bazelisk-linux-amd64" >  /usr/local/bin/bazel && \
    chmod +x /usr/local/bin/bazel && \
    chmod +x /usr/local/bin/buildozer && \
    chmod +x /usr/local/bin/buildifier 