---
author: "jrbeverly"
title: "cue-for-schema-gen"
date: "2021-10-23T00:46:21Z"
description: "Experimenting with generating code from Cuelang definitions"
tags: ["jrbeverly"]
summary: |
  Experimenting with using Cuelang for the purposes of representing a schema, then generating associated files from the original source of truth
---

| Experimenting with generating code from Cuelang definitions | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/cue-for-schema-gen) |
| :-------- | -------: |


# Cuelang with SchemaGen

Experimenting with using Cuelang for the purposes of representing a schema, then generating associated files from the original source of truth

## Notes

- Schema validation is nice, the base case is straightforward
- Combining data with this allows for connecting enum/datasets
- What about stubbing of datasets (e.g. restrict this to 'Dataset' that isn't locally defined?)
- Text templating isn't really what I want to do with this kind of tool
- Seems like I need to write more "representation/composition" than I originally hoped
- Doesn't seem to support the kind of "intentions" workflow I was hoping for

This isn't handling the case I'm interested in with schema validation & generation. Although it provides a lot of the base essentials out of the box, I'm looking more for a cross between schema+terraform. A system that allows the tracking of version drift, and reconcilation as part of its design.

Clarifying my exact intended use case is probably a better direction than fiddlign with this more.
