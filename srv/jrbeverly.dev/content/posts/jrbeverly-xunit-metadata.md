+++
author="jrbeverly"
title="xunit-metadata"
date="2018-11-02T00:52:39Z"
description="Strongly-typed attributes for the management and organization of tests."
tags=[
  "categories",
  "categorization",
  "organization",
  "strongly-typed",
  "testing",
  "testing-tools",
  "org:jrbeverly"
]
+++

# XUnit.Metadata

## Summary

Strongly-typed attributes for the management and organization of tests. As opposed to using strings throughout the code, `[Trait("Category", "Unit")]`, you can use strongly-typed attributes for organizing tests.

## Getting Started

With xUnit v2 you can markup tests with traits, particullary of interest is the category key. Using traits you can sort tests or control execution of tests from the command line. You can install in your project using the Nuget Manager Console:

```bash
Install-Package xUnit.Metadata
```

Or from the .NET CLI with the following command:

```bash
dotnet add package xUnit.Metadata
```

### Usage

You can use the attributes just as you would a [`TraitAttribute`](https://xunit.github.io/docs/comparisons.html) from xUnit v2.

```csharp
[Fact]
[Unit]
[Nighty]
public void ExceptionWhenDivideByZero()
{
    var value = 10;
    Assert.Throws<ArgumentException>(() => _adder.Divide(value, 0));
}
```

Or as a class attribute:

```csharp
[Unit]
public sealed class AdderTests
{
    [Theory]
    [Nighty]
    [InlineData(3, 1, 2)]
    [InlineData(4, 2, 2)]
    [InlineData(1, 1, 0)]
    [InlineData(0, -2, 2)]
    public void AddSet(int expected, int a, int b)
    {
        Assert.Equal(expected, _adder.Add(a, b));
    }

    [Fact]
    [Weekly]
    public void ExceptionWhenDivideByZero()
    {
        var value = 10;
        Assert.Throws<ArgumentException>(() => _adder.Divide(value, 0));
    }
}
```

### Running from Command Line

When using the .NET CLI, you can use `dotnet test` to execute tests from the command line. You can selectively execute tests based on filtering condition through `--filter`. You can do this with the following:

```bash
dotnet test --filter "Category = Unit" ProjectA.csproj
```

Running the above: `dotnet test --filter Category=Unit` will run tests which are annotated with the strongly typed attribute `[Unit]` or `[Trait("Category", "Unit")]`.

## Build

You can build the project using the scripts available in the [`build/`](build/) directory. The scripts are used in the project pipeline, and can be run locally or in a docker container. You can do this with the following:

```bash
sh build/build.sh
```

Or you can use the docker based script, `docker-build.sh` if you do not have the necessary commands installed locally on your machine. You can do this with the following:

```bash
sh build/docker-build.sh
```

### Packaging

You can package the library into a nuget package using the `package.sh` script. You can do this with the following:

```bash
sh build/package.sh
```

## Tests

All scripts in the repository use [xUnit](https://xunit.github.io/) for testing. You can view the tests in the `tests/` directory. An example testing project that makes use of the attributes is available under `sample/`. However, this project is more designed as a prototyping ground for new attributes. To run the tests for the project, you can do so with the following:

```bash
sh build/test.sh
```

Or you can use the docker version of the script, `docker-test.sh` if you do not have the necessary commands installed locally on your machine. You can do this with the following:

```bash
sh build/docker-test.sh
```

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Ana Paula Tello from the Noun Project](https://thenounproject.com/term/flask/31697/).