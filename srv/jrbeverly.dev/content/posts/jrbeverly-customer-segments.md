+++
author="jrbeverly"
title="customer-segments"
date="2020-02-24T17:48:47Z"
description="Applying unsupervised learning techniques on product spending data to identify customer segments hidden in the data."
tags=[
  "customer-segmentation",
  "udacity-mlnd"
]
+++

# Creating Customer Segments

Analyze a dataset containing data on various customers' annual spending amounts (reported in monetary units) of diverse product categories for internal structure. One goal of this project is to best describe the variation in the different types of customers that a wholesale distributor interacts with. Doing so would equip the distributor with insight into how to best structure their delivery service to meet the needs of each customer.

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

The customer segments data is included as a selection of 440 data points collected on data found from clients of a wholesale distributor in Lisbon, Portugal. More information can be found on the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Wholesale+customers).

Note (m.u.) is shorthand for *monetary units*.

### Features

1) `Fresh`: annual spending (m.u.) on fresh products (Continuous);
2) `Milk`: annual spending (m.u.) on milk products (Continuous);
3) `Grocery`: annual spending (m.u.) on grocery products (Continuous);
4) `Frozen`: annual spending (m.u.) on frozen products (Continuous);
5) `Detergents_Paper`: annual spending (m.u.) on detergents and paper products (Continuous);
6) `Delicatessen`: annual spending (m.u.) on and delicatessen products (Continuous);
7) `Channel`: {Hotel/Restaurant/Cafe - 1, Retail - 2} (Nominal)
8) `Region`: {Lisbon - 1, Oporto - 2, or Other - 3} (Nominal)
