+++
author="jrbeverly"
title="bullseye-exp"
date="2019-02-12"
description="bullseye-exp"
tags=["experimentation"]
+++
# BullsEye Experimentation

## Summary

Experiment with BullsEye for building command-driven tooling (build-systems).

## Usage

Experimenting with using BullsEye in a dotnet project. BullsEye doesn't handle parsing of command line arguments, instead recommends using a tool for parsing them.

```csharp
var app = new CommandLineApplication(throwOnUnexpectedArg: false);
var foo = app.Option<string>("--foo", "foo", CommandOptionType.SingleValue);
```

BullsEye can then be used to built a higher level build system for languages (`terraform`, `docker`, etc).

## Notes

* Creates common build-systems for templates (terraform-module, docker image)
* Auto-generate the console apps (BullsEye, CommandLineApplication) from a definition
* Define the system, then generate interfaces (`service`, `cli`, `client`, etc)