# Apache-Pig---Rank-in-Bag
Assigns a ranking to each record, after data has been grouped 

This file uses the Enumerate UDF from datafu to assign a within-bag rank to data, after it has been grouped.

For example, given a dataset with fields {state, city, population}, one may which to rank the cities in each state, according to population.
This can be done first by grouping the data by state, and then using the following code. 
