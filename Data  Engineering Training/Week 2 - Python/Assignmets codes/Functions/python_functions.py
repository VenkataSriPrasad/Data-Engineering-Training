# Example: Square each element in a list using map
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x**2, numbers))
print(squared_numbers)

# Example: Convert a string to uppercase
text = "hello"
uppercase_text = text.upper()
print(uppercase_text)

# Example: Find the absolute value of a number
num = -5
absolute_value = abs(num)
print(absolute_value)

from datetime import datetime

# Example: Get the current date and time
current_datetime = datetime.now()
print(current_datetime)



# Function to calculate the area of a rectangle
def calculate_rectangle_area(length, width):
    area = length * width
    return area

# Example usage
rectangle_length = 5
rectangle_width = 8

area_of_rectangle = calculate_rectangle_area(rectangle_length, rectangle_width)

print(f"The area of the rectangle with length {rectangle_length} and width {rectangle_width} is: {area_of_rectangle}")






# Example: Lambda expression to square a number
square = lambda x: x**2
result = square(5)
print(result)