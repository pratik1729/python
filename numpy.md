---
layout: default
title: numpy.md
---
```python
import numpy as np
np.__version__
```




    '1.21.4'



# Arrays


```python
np.arange(start=1, stop=10, step=1) # stop value is not included, step need not be integer
```




    array([1, 2, 3, 4, 5, 6, 7, 8, 9])



# Probability distributions


```python
mu = 2.0
sigma = 5.0
a = np.random.normal(mu, sigma, 10000)
a = np.random.randint(low=10, high=100, size=5)
a = np.random.uniform(low=-10, high=10, size=1000)
np.mean(a)
np.median(a)
np.std(a)

a.std()
a.var()
a.mean()
```




    0.022666761576258593



# Percentiles


```python
x = np.random.normal(0, 0.5, 10000)
np.percentile(x, 90) # 90th percentile value 
```




    41.0



# Correlation and Covariance


```python
x = np.random.normal(0, 0.5, 10000)
y = np.random.normal(0, 0.5, 10000)
np.corrcoef(x,y)
np.cov(x,y)
```




    array([[0.25111522, 0.00495138],
           [0.00495138, 0.2512397 ]])


