"""
hw2_debugging.py

This module implements the merge sort algorithm using helper methods to
sort an array. It utilizes recursion to divide the array and then merges
the sorted halves back together.
"""

import rand


def merge_sort(input_arr):
    """Sorts an array using the merge sort algorithm."""
    if len(input_arr) == 1:
        return input_arr

    half = len(input_arr) // 2
    return recombine(merge_sort(
        input_arr[:half]), merge_sort(input_arr[half:]))


def recombine(left_arr, right_arr):
    """Merges two sorted arrays into a single sorted array."""
    left_index = 0
    right_index = 0
    merge_arr = []

    while left_index < len(left_arr) and right_index < len(right_arr):
        if left_arr[left_index] < right_arr[right_index]:
            merge_arr.append(left_arr[left_index])
            left_index += 1
        else:
            merge_arr.append(right_arr[right_index])
            right_index += 1

    # Add any remaining elements from left_arr and right_arr
    merge_arr.extend(left_arr[left_index:])
    merge_arr.extend(right_arr[right_index:])

    return merge_arr


arr = rand.random_array([None] * 20)
arr_out = merge_sort(arr)

print(arr_out)
