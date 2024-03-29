import math

def is_prime(n):
    """
    Check if a number is prime.

    Args:
        n (int): The number to check.

    Returns:
        bool: True if the number is prime, False otherwise.
    """
    if n < 2:
        return False
    for i in range(2, math.isqrt(n) + 1):
        if n % i == 0:  # use n instead of x
            return False
    return True