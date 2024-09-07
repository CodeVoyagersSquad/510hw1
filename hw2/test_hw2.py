import hw2_debugging as hw2

def test_merge_sort():
    """
    Run test cases to validate the merge sort implementation.
    """

    # Test Case 1: Sorted Array
    sorted_array = [1, 2, 3, 4, 5]
    expected = [1, 2, 3, 4, 5]
    result = hw2.merge_sort(sorted_array)
    assert result == expected, f"Test Case 1 Failed: Expected {expected}, but got {result}"

    # Test Case 2: Reverse Sorted Array
    reverse_sorted_array = [5, 4, 3, 2, 1]
    expected = [1, 2, 3, 4, 5]
    result = hw2.merge_sort(reverse_sorted_array)
    assert result == expected, f"Test Case 2 Failed: Expected {expected}, but got {result}"

    # Test Case 3: Array with Duplicate Elements
    array_with_duplicates = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
    expected = [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
    result = hw2.merge_sort(array_with_duplicates)
    assert result == expected, f"Test Case 3 Failed: Expected {expected}, but got {result}"

    print("All test cases passed!")


# Run the test cases
test_merge_sort()