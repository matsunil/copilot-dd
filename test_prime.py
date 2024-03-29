import math

def test_is_prime():
    # Test prime numbers
    assert is_prime(2) == True
    assert is_prime(3) == True
    assert is_prime(5) == True
    assert is_prime(7) == True
    assert is_prime(11) == True

    # Test non-prime numbers
    assert is_prime(1) == False
    assert is_prime(4) == False
    assert is_prime(6) == False
    assert is_prime(8) == False
    assert is_prime(9) == False

    # Test large prime number
    assert is_prime(997) == True

    # Test large non-prime number
    assert is_prime(1000) == False

    # Test negative numbers
    assert is_prime(-2) == False
    assert is_prime(-7) == False

    print("All test cases pass")

test_is_prime()