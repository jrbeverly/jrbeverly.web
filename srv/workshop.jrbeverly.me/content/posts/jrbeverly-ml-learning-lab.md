+++
author="jrbeverly"
title="ml-learning-lab"
date="2021-03-16T02:03:08Z"
description="Machine Learning Lab"
tags=["org:jrbeverly"]
+++

# Machine Learning Lab

A repository for aggregating my machine learning exercises, practices and learning labs. The projects included in this repository are based on the coursework for Udacity's Deep Learning Nanodegree Foundations. These are primarily from working on the Machine Learning Nanodegree offered by Udacity.

The project files are built using Jupyter Book into a web-accessible form.

## Getting Started

The conda environment for working with all of the Jupyter Notebooks is provided as `environment.yml`. This environment is used for all testing by Github Actions and can be setup by:

The environment can be setup by running the following:

```bash
conda env create -f environment.yml
conda activate ml-learning-lab
```

The Jupyter book can interacted with using the following command:

```bash
jb build notebooks/
```
