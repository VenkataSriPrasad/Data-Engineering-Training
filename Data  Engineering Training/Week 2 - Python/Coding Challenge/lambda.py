from functools import reduce

# Example using reduce() to find the product of numbers
numbers = [1, 2, 3, 4, 5]

product = reduce(lambda x, y: x * y, numbers)

print("Original Numbers:", numbers)
print("Product of Numbers:", product)

































# square = lambda x: x**2

# result = square(5)

# print("Square of 5:", result)

# Example using map() to calculate squares of numbers
# numbers = [1, 2, 3, 4, 5]

# squares = list(map(lambda x: x**2, numbers))

# print("Original Numbers:", numbers)
# print("Squares of Numbers:", squares)

# numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# even_numbers = list(filter(lambda x: x % 2 == 0, numbers))

# print("Original Numbers:", numbers)
# print("Even Numbers:", even_numbers)

