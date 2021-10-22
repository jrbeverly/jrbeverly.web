+++
author="jrbeverly"
title="boston-housing"
date="2020-02-24T17:50:55Z"
description="Leverage a few basic machine learning concepts to assist you and a client with finding the best selling price for their home."
tags=[
  "boston-housing-price-prediction",
  "udacity-mlnd",
  "org:jrbeverly"
]
+++

# Predicting Boston Housing Prices

Evaluate the performance and predictive power of a model that has been trained and tested on data collected from homes in suburbs of Boston, Massachusetts. A model trained on this data that is seen as a good fit could then be used to make certain predictions about a home — in particular, its monetary value. This model would prove to be invaluable for someone like a real estate agent who could make use of such information on a daily basis.

## Getting Started

You can spin up the environment using docker by running the following commands:

```bash
bash docker.bash

# inside docker container
bash .build/conda.bash
```

Alternatively you can manually install **Python** and the following Python libraries installed:

- [NumPy](http://www.numpy.org/)
- [Pandas](http://pandas.pydata.org/)
- [matplotlib](http://matplotlib.org/)
- [scikit-learn](http://scikit-learn.org/stable/)

You will also need to have software installed to run and execute a [Jupyter Notebook](http://ipython.org/notebook.html)

## Data

The modified Boston housing dataset consists of 489 data points, with each datapoint having 3 features. This dataset is a modified version of the Boston Housing dataset found on the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Housing).

### Features

1. `RM`: average number of rooms per dwelling
2. `LSTAT`: percentage of population considered lower status
3. `PTRATIO`: pupil-teacher ratio by town
4. `MEDV`: median value of owner-occupied homes (**Target Variable**)
