+++
author="jrbeverly"
title="vagrant-cicd"
date="2019-02-02"
description="Using Rubocop and Shellcheck to perform linting on a Vagrantfile."
tags=["environments", "vagrant"]
+++
# Vagrant Continuous Integration Prototype

**Pre-built Vagrant Box**:
-[`vagrant init ubuntu/trusty64`](https://app.vagrantup.com/ubuntu/boxes/trusty64)

This example vagrant configuration installs and configures Ubuntu Trusty using simple Ruby scripts.

The objective is to move as much of the Vagrantfile configuration into external ruby scripts. These scripts could then be split into testable functions and modules. Currently the focus is on providing a consistent installation process using `shellcheck` and `rubocop`.

Aiming to have a simple vagrant example in this repository, and then use GitLab CI to perform linting on the provisioning scripts (shell+ruby).

## Requirements

The following software must be installed/present on your local machine before you can use Vagrant to build the virtual machine:

- [Vagrant](http://vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Usage

Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

    vagrant up

After a few minutes, Vagrant should tell you the machine was generated successfully.
