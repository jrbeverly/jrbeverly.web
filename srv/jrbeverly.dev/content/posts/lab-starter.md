+++
author="jrbeverly"
title="lab-starter"
date="2019-10-05"
description="GitHub Learning Lab Tutorial on 'Write a Learning Lab course'"
tags=["github"]
+++
# GitHub Learning Lab - Lab Starter

Noticed this when working with GitHub Actions that you can have a automated 'teacher' by using linting + GitHub Bot. Thought this was an interesting idea, and have started this repository to get a better understanding of how this actually works.

With GitHub now having its own CI/CD Pipeline, it may be possible to create all sorts of tutorials for setting up applications. The first one that comes to mind is gamedev with something like Godot. Since a written tutorial is more static, this would allow a learner to follow a structure process for writing their own game, while having step by step linting to ensure that nothing went off the guard-rails.

Potential concern would be how the linting would handle a learner that introduced unexpected aspects to the code itself. For example, if the code is testing the output from the program, what if something like `Console.WriteLine("mydebuggingcode")` is present, would that be a failure? How should that best be handled? Etc.
