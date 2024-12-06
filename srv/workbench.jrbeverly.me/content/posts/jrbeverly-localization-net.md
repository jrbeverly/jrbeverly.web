---
author: "jrbeverly"
title: "localization-net"
date: "2018-11-02T00:52:18Z"
description: "A simple experiment prototyping a concept for strongly typed language terms."
tags: ["jrbeverly"]
summary: |
  A simple experiment prototyping a concept for strongly typed language terms. **Note: The generated component is not built with this. This is a usage prototype only (no generator is included).**
---

| A simple experiment prototyping a concept for strongly typed language terms. | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/localization-net) |
| :-------- | -------: |


# Localization.NET Concept

## Summary

A simple experiment prototyping a concept for strongly typed language terms.

**Note: The generated component is not built with this. This is a usage prototype only (no generator is included).**

## Getting Started

The idea that Localization.NET is attempting to conceptualize is one where an interface is used as the primary mechanism for declaring language terms. Attributes can be used to include more contextual information (usage, type, namespace). The Roslyn compiler can then use this information to generate the underlying code to facilitate the Language terms.

With the underlying code generated on-the-fly, a dependency injection framework (for example: Ninject, TinyIoC) can then be used for setting the `ILanguageTerms _languageTerms` field.

```csharp
public class MyGreeter
{
    private ILanguageTerms _languageTerms;

    public void SayHello(string name)
    {
        Console.WriteLine(_languageTerms.Hello(name));
    }

    [LanguageTerms("myapp.greeter")]
    public interface ILanguageTerms
    {
        [LangTerm("hello")]
        LanguageTerm Hello(string name);

    }
}
```

The language resources could be defined in any format, below is an example using json (`mygreeter.en-CA.json`):

```json
{
  "myapp": {
    "greeter": {
      "hello": "Hello {0}! How are you?"
    }
  }
}
```

Implementing new language terms is a simple process of adding the term to `ILanguageTerms`, with an invariant set:

```csharp
public class MyGreeter
{
    // ....

    [LanguageTerms("myapp.greeter")]
    public interface ILanguageTerms
    {
        [LangTerm("no_name")]
        [Invariant("Sorry! Didn't catch that name?")]
        LanguageTerm Message { get; }
    }
}
```

The `[Invariant]` attribute can later be added into the globalaization pipeline by an automated system (powered by Roslyn).

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Percy Batalier from the Noun Project](https://thenounproject.com/term/earth/178564/).