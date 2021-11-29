---
layout: default
title: pandas.md
---
```python
import pandas as pd
pd.__version__

```




    '1.3.4'



# Series

# Create series


```python
# create series object from list

months = ["Jan", "Feb", "March", "April"]
pd.Series(months)

# dtype: object is internal lingo for strings in pandas
# first column is index column, it can be set to anything, default is 0,1,2..

```


```python
# create series object from dictionary

location = {"city": "Tokyo", "country": "Japan",
            "country": "India", "planet": "Earth"}  # this has identical keys
print(location)  # only one of the identical keys is stored
pd.Series(location)

# index column is dictionary keys
# Series object is combination list+dictionary
# Series object can have multiple identical indices, but a dictionary cannot have identical keys

```


```python
# Parameters and arguments
key = ["city", "country", "planet", "country"]
value = ["Tokyo", "Japan", "Earth", "India"]

# duplicate index allowed, certain operations are not allowed if duplicates exist
pd.Series(data=value, index=key)

```

# Series attributes


```python
# Series attributes
# atrributes do not modify the object, only view or give some information back
location = {"city": "Tokyo", "country": "Japan",
            "planet": "Earth"}  # this has identical keys
s = pd.Series(location)

#  attributes
s.values  # Return Series as ndarray or ndarray-like depending on the dtype.
s.index  # return RangeIndex object
s.dtype  # string, shows datatype
s.is_unique  # True, if all values are unique
s.ndim  # int, number of dimensions, =1 for Series object
s.shape  # tuple, Gives number of (rows,columns), for a Series it gives (rows,)
s.size  # int, gives number of elements, including NULL values
s.name  # hashable, name of the column in a csv or dataframe, can be modified s.name=abc

```

# CSV file


```python
# squeeze=True returns a series object
# header=None if csv does not have header row, by default header=0, first row is column headers
# index_col must be included in usecols

pd.read_csv("pokemon.csv", usecols=["Pokemon"],
            squeeze=True, sep=',', header=0)
pd.read_csv("pokemon.csv", usecols=[
            "Pokemon", "HP"], index_col="Pokemon", squeeze=True)

```

# Series methods


```python
nums = [1.2, 4.5, 2.9, 2, 5.6, 3.4, 9, 9.8]
s = pd.Series(nums)

# s = pd.read_csv("pokemon.csv",usecols=["Pokemon"],squeeze=True)

s = s.head(10)
s = s.tail(10)
# returns new Series, does not modify the original one. Indices are preserved
s.sort_values(ascending=True)
# does not return new Series, overwrites the original one. Indices are preserved. Results in shuffling
s.sort_values(ascending=True, inplace=True)
s.sort_index(ascending=True)  # acts on indicex

s.value_counts()  # Series - return count of each value in descending order
s.apply(lambda x: x+1)  # apply a function to each element of the Series s

s.map(s)  # map values of one series to index of other series

```




    0     2.2
    3     3.0
    2     3.9
    5     4.4
    1     5.5
    4     6.6
    6    10.0
    7    10.8
    dtype: float64



## Math methods on Series


```python
nums = [1.2, 4.5, 2.9, 2, 5.6, 3.4, 9, 9.8]
s = pd.Series(nums)

s.count()  # return all valid elements, excludes NULL, NaN etc, len method returns everything
s.sum()
s.mean()
s.product()
s.std()
s.min()
s.max()
s.median()
s.mode()  # returns a new Series if there is a tie
s.describe()  # returns Series, gives summary of statistics
s.idxmax()  # index label of max value, first label is returned
s.idxmin()  # index label of min value, first label is returned

```


```python
# Series with builtin functions
nums = [1.2, 4.5, 2.9]
s = pd.Series(nums)

list(s)  # convert series to list
dict(s)  # convert series to dict, index col becomes the key
max(s)
min(s)

```

# Indexing and Slicing


```python
# optimizations - its good idea to sort index first before extraction,
pokemon = pd.read_csv("pokemon.csv", usecols=["Pokemon"], squeeze=True)
pokemon[1]
pokemon[[100, 200, 300]]  # retutns new Series object
pokemon[50:101]
pokemon[:50]
pokemon[-30:-10]

# these methods can be used if the index is label
s = pd.read_csv("pokemon.csv", usecols=[
                "Pokemon", "HP"], index_col="Pokemon", squeeze=True)
s["Venusaur":"Vulpix"]  # the last label:value is ALSO included

# get method provides fall back option with default= parameter
s.get("Venusaur", default="Bad name")

```


```python

```


```python

```


```python

```
