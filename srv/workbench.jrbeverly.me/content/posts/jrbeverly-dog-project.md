---
author: "jrbeverly"
title: "dog-project"
date: "2020-01-11T18:05:28Z"
description: "Identify a canine breed from an image."
tags: ["jrbeverly"]
summary: |
  My implementation of the Convolutional Neural Networks (CNN) algorithm for identifying a canine’s breed from an image. Additionally, it supply the resembled dog breed if provided an image of a human.
---

| Identify a canine breed from an image. | [![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)](https://github.com/jrbeverly/dog-project) |
| :-------- | -------: |


# Classification of Dogs

My implementation of the Convolutional Neural Networks (CNN) algorithm for identifying a canine’s breed from an image. Additionally, it supply the resembled dog breed if provided an image of a human.

## Classification

You can see an example classification for the German Shepherd picture below:

![german shepherd](./docs/screenshots/german-shepherd.png "German Shepherd")

And an example of a misclassification for a [rotweiler](docs/screenshots/rotweiler.png).

## Notes

_You can see my full analysis of the classifier in the [notebook](notebook.ipynb), but a snippet is included below_

The output result is about where I expected it to be. ResNet50 is very good with large image data, and I provided minimal layers to the algorithm, I expected a good base performance. However the model has only achieved `81%` score, which would not work very well in a production environment (app or SaaS).

Potential improvements that are available for this model are:

- Reduce overfitting with usages of `dropout` and `batch_normalization` layers
- Add `batch_normalization` to reduce covariate shift in the calculation process
- Change the optimizer to another type, to find a better optimizer fit for my problem (`adagrad` or `adam`)

None of the above are guaranteed to produce a better result, just potential directions that I could pursue to improve the performance of the machine.

## Project

This project was submitted by Jonathan Beverly as part of the Nanodegree At Udacity. The source was originally pulled from `https://github.com/udacity/dog-project.git`.
