# # A simple Python function
# def fun():
#     print("Welcome to GFG")

# fun()



# # Function to calculate the area of a rectangle
# def calculate_rectangle_area(length, width):
#     area = length * width
#     return area

# # Example usage
# rectangle_length = 5
# rectangle_width = 8

# area_of_rectangle = calculate_rectangle_area(rectangle_length, rectangle_width)

# print(f"The area of the rectangle with length {rectangle_length} and width {rectangle_width} is: {area_of_rectangle}")



# """
# Python Function Arguments
# Arguments are the values passed inside the parenthesis of the function. A function can have any number of arguments separated by a comma.
# In this example, we will create a simple function in Python to check whether the number passed as an argument to the function is even or odd.

# Default argument
# Keyword arguments (named arguments)
# Positional arguments
# Arbitrary arguments (variable-length arguments *args and **kwargs)


# """
# # Function with default argument value
# def greet_person(name, greeting="Hello"):
#     full_greeting = f"{greeting}, {name}!"
#     return full_greeting

# # Example usage
# person_name = "Alice"

# # Using the default greeting
# default_greeting = greet_person(person_name)
# print(default_greeting)

# # Using a custom greeting
# custom_greeting = greet_person(person_name, "Good morning")
# print(custom_greeting)



# # Example: Function with keyword arguments
# def greet(name, greeting="Hello"):
#     return f"{greeting}, {name}!"

# result = greet(name="John", greeting="Hi")
# print(result)



# # Example: Function with *args and **kwargs
# def special_function(*args, **kwargs):
#     print(args)
#     print(kwargs)

# special_function(1, 2, 3, key1="value1", key2="value2")


# Example: Function with *args
def sum_numbers(*args):
    return sum(args)

result = sum_numbers(1, 2, 3, 4)
print(result)



# # Return Statement in Python Function
# def square_value(num):
#     """This function returns the square
#     value of the entered number"""
#     return num**2
 
 
# print(square_value(2))
# print(square_value(-4))

# #  Pass by Reference and Pass by Value

# #reference
# def myFun(x):
#     x[0] = 20
# lst = [10, 11, 12, 13, 14, 15]
# myFun(lst)
# print(lst)

# #value
# def myFun(x):
#     x = 20
# x = 10
# myFun(x)
# print(x)

