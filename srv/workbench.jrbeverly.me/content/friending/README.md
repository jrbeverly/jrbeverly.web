+++
author="jrbeverly"
title="Friending"
tags=["friending"]
+++

|  Friending is an imaginary online dating, friendship, and social networking mobile application. | [![GitHub](https://img.shields.io/badge/repository-github-blue.svg)](https://github.com/thefriending/) |
| :-------- | -------: |

## Summary

Friending is an online dating, friendship, and social networking mobile application that features user-created questionnaires. Friending has two primary features: joining groups to find people similar to you or signing up for events happening in your local area.  Friending is a prototype built with the Proto.io application prototyping tool.

The Friending prototype was built as part of a requirements specification project.  The project focused on the development of a user manual around a fictional matchmaking application called Friending.  The application centered around user-created questionnaires that could be used to find relationship matches.  The user manual was designed with the goal of _deceiving_ the reader into believing that the application existed.  A project vision document and set of user requirements guided the development of scenarios and use cases for the application.   The fully-interactive high-fidelity prototype created for the requirements specification project is provided in this repository, available as a standalone HTML page.

## Manual

The Friending user manual provides info and tips to help you understand the mobile application.  The requirements specification project involved the creation of a user manual for the fictional mobile application Friending.  The Friending prototype is the actualization of a user vision and set of requirements to construct a matchmaking application.  The vision and requirements were used to develop the expected behaviour of the prototype, although not all requirements were actualized into the interactive prototype.  The prototype merely needed to present a faithful representation of the original vision.

## Proto.io

Proto.io is a web service to create fully-interactive high-fidelity prototypes that look and work exactly like your app should. No coding required.  Using Proto.io you can quickly design and prototype design ideas.  As the user manual was built around the fictional mobile application Friending, mockups were necessary to explain the application to the reader.  Proto.io was selected for developing the mockups as they produced realistic mockups for a mobile application.  Interaction was added to produce a fully-interactive prototype, which was useful in validating scenarios and use cases from the user manual.  The visual design of the prototype was guided by the project vision document.

## Notes

This was a fun project to work on, as working with `proto.io` was really enjoyable. The tool had some quirks, but nothing that time and iteration would not have solved. 

When comparing development in VueJS and React to the experiment with proto.io, I kind of favour proto.io. Using only static data definitely simplifies the interface for proto.io, which does not make it very useful for dynamic applications. However, I would be very curious to see how one might go about developing a tool like proto.io that works with real APIs.

I suspect you would want to ensure that as much of the visual design (localization, spoofing of data, spoofing of actions) would be handled by the tool. While the actual interaction would be done by connecting to an interface ontop of a service. Maybe something like Redux (in the react world), that shifts away the problem of populating data from a service.

Although the website for deploying came when I started up `jrbeverly.dev`, so that main focus is really the manual and the prototype.

## Acknowledgements

The project icon is retrieved from [the Noun Project](docs/icon/icon.json). The original source material has been altered for the purposes of the project. The icon is used under the terms of the [Public Domain](https://creativecommons.org/publicdomain/zero/1.0/).

The project icon is by [Stefan Hartmann from the Noun Project](https://thenounproject.com/term/like/201300/).