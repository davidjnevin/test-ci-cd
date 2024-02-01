# simple test to check the sum_list() function
from src.numsum.main import sum_list


def test_sum_list():
    list = [1, 2, 3, 4, 5]
    assert sum_list(list) == 15
