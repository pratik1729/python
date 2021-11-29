---
layout: default
title: scipy.md
---
```python
import scipy.stats as st

# other imports
import numpy as np
import matplotlib.pyplot as plt

```

# Probability distributions


```python
x = np.arange(start=-10, stop=10, step=0.001)
plt.plot(x, st.norm.pdf(x))  # normal PDF

x = np.arange(start=0, stop=10, step=0.001)
plt.plot(x, st.expon.pdf(x))  # exponential PDF, power law

x = np.arange(start=0, stop=10, step=0.001)
plt.plot(x, st.binom.pmf(x, 10, 0.5))  # binomial PMF (mass function), x, n, p

x = np.arange(start=400, stop=600, step=0.5)
plt.plot(x, st.poisson.pmf(x, 500)) # Poisson dist, use case: A website gets average 500 visits/day. What is probability of getting 550?


```

# Moments


```python
x = np.random.normal(0, 0.5, 10000)
np.mean(x) # first moment
np.var(x) # second moment
st.skew(x) # third moment
st.kurtosis(x) # fourth moment
```
