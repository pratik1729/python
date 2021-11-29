---
layout: default
title: matplotlib.md
---
```python
import matplotlib.pyplot as plt

# other imports

import numpy as np
import scipy.stats as st
```


```python
mu = 2.0
sigma = 5.0
a = np.random.normal(mu, sigma, 10000)

plt.hist(a, 50)  # arraylike, bins
plt.show()
```

# Line graph


```python
x = np.arange(-3, 3, 0.01)
axes = plt.axes()

axes.set_xlim([-5, 5])
axes.set_ylim([0, 1.0])

axes.set_xticks([-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5])
axes.set_yticks([0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0])

axes.grid()

plt.xlabel('Greebles')
plt.ylabel('Probability')

plt.plot(x, st.norm.pdf(x), 'b-')
plt.plot(x, st.norm.pdf(x, 1.0, 0.5), 'r:')

plt.legend(['Sneetches', 'Gacks'], loc=4)

plt.show()
```

# Bar chart


```python
values = [12, 55, 4, 32, 14]
colors = ['r', 'g', 'b', 'c', 'm']
plt.bar(range(0, 5), values, color=colors)
plt.show()
```

# Scatter plot


```python
from pylab import randn

X = randn(500)
Y = randn(500)
plt.scatter(X, Y)
plt.show()
```

# Histogram


```python
incomes = np.random.normal(27000, 15000, 10000)
plt.hist(incomes, 50)
plt.show()
```

# Box & Whisker Plot


```python
uniformSkewed = np.random.rand(100) * 100 - 40
high_outliers = np.random.rand(10) * 50 + 100
low_outliers = np.random.rand(10) * -50 - 100
data = np.concatenate((uniformSkewed, high_outliers, low_outliers))
plt.boxplot(data)
plt.show()

```

# Pie chart


```python

values = [12, 55, 4, 32, 14]
colors = ['r', 'g', 'b', 'c', 'm']
explode = [0, 0, 0.2, 0, 0]
labels = ['India', 'United States', 'Russia', 'China', 'Europe']
plt.pie(values, colors=colors, labels=labels, explode=explode)
plt.title('Student Locations')
plt.show()

```
