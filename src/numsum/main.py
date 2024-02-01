# script to return the sum of a list of numbers
# using python library reduce()

# import the sum() function from the python library
from functools import reduce


# define a function to return the sum of a list of numbers
def sum_list(list):
    return reduce((lambda x, y: x + y), list)


# define a list of numbers
list = [1, 2, 3, 4, 5]


if __name__ == "__main__":
    sum_list(list)
