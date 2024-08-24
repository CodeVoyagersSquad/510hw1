# test_hw1a.py

from hw1a import multiply_numbers

def test_multiply():
    assert multiply_numbers(2, 3) == 6  # This should pass

def test_error():
    assert multiply_numbers(2, 3) == 7  # This should fail, showing the test framework catching the error