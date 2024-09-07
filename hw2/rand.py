"""
rand.py

This module generates a random array of integers by utilizing
the secrets module to generate cryptographically secure random numbers.
"""

import secrets


def random_array(arr):
    """Generates a shuffled random array using cryptographically
    secure random numbers."""
    for i, _ in enumerate(arr):
        arr[i] = secrets.randbelow(20) + 1
    return arr
