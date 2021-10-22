+++
    author="jrbeverly"
    title="contentbundler"
    date="2018-11-02T00:41:04Z"
    description="A proof of concept for generation of strongly typed paths using the Roslyn Framework."
    tags=[
  "code-generation",
  "experiment",
  "poc",
  "proof-of-concept",
  "prototype",
  "roslyn",
  "strongly-typed"
]
    +++
    
# ContentBundler

## Summary

A proof of concept for generation of strongly typed paths using the Roslyn Framework.

## Getting Started

ContentBundler is provided as an command line application, originally adapted from an XNA Content Compiler. The new version greatly simplifies the code requirements, leveraging Roslyn for the code generation. An example is available from [test/assets](test/assets), which will generate the result [PatchQ.cs]

```bash
./ContentBundler.exe --archive patch-Q.zip --file PatchQ.cs --class PatchQ --namespace PlatformerGame.Assets
```

This will then output a series of static classes.

```csharp
namespace PlatformerGame.Assets
{
    using System;

    public static class PatchQ
    {
        public static class Textures
        {
            public readonly static string Tex0 = "textures/tex0.png";
            public readonly static string Tex01 = "textures/tex01.png";
            public readonly static string Tex02 = "textures/tex02.png";
            public readonly static string Tex03 = "textures/tex03.png";
            public readonly static string Tex04 = "textures/tex04.png";
            public static class Backgrounds
            {
                public readonly static string Background = "textures/backgrounds/background.png";
            }
        }

        public static class Images
        {
            public readonly static string Icon = "images/icon.png";
            public readonly static string Logo = "images/logo.png";
        }

        public static class Sounds
        {
            public readonly static string Day01 = "sounds/day01.wav";
            public readonly static string Day02 = "sounds/day02.wav";
            public readonly static string Day03 = "sounds/day03.wav";
            public readonly static string Day04 = "sounds/day04.wav";
            public readonly static string Night01 = "sounds/night01.wav";
            public readonly static string Night02 = "sounds/night02.wav";
            public readonly static string Night03 = "sounds/night03.wav";
            public readonly static string Night04 = "sounds/night04.wav";
            public readonly static string Night05 = "sounds/night05.wav";
        }
    }
}
```

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [jeanbaptiste sautelet from the Noun Project](https://thenounproject.com/term/crane/102655/).