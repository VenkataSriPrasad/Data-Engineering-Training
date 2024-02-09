#!/usr/bin/env python
# coding: utf-8

# # Writing and Running First Program:

# In[20]:


# First Python Program
print("Hello, World!")


# # Keywords & Identifiers:

# In[19]:


if True:
    variable_name = "I am an identifier"
    print(variable_name)
    
"""    
Python keywords    

False       class       finally     is          return
None        continue    for         lambda      try
True        def         from        nonlocal    while
and         del         global      not         with
as          elif        if          or          yield
assert      else        import      pass
break       except      in          raise"""


# # Variables & Operators:

# In[18]:


# Variables and Operators
x = 5
y = 2

# Arithmetic operators
sum_result = x + y
difference_result = x - y
product_result = x * y
division_result = x / y

# Output
print("Sum:", sum_result)
print("Difference:", difference_result)
print("Product:", product_result)
print("Division:", division_result)


# # Data Types:

# In[17]:


# Numeric Data Type:

integer_number = 10
float_number = 3.14
complex_number = 3 + 2j

print("Integer:", type(integer_number))
print("Float:", type(float_number))
print("Complex_number:", type(complex_number))

#  Sequence Data Type:

#  List
my_list = [1, 2, 3, 4, 5]
print("List:", my_list)

# String
my_string = "Hello, Python!"
print("String:", my_string)

# Boolean
is_true = True
is_false = False

print("Boolean True:", is_true)
print("Boolean False:", is_false)


# # IF Condition

# In[1]:


user_input = float(input("Enter a number: "))

# Check if the number is positive, negative, or zero
if user_input > 0:
    print("The entered number is positive.")


# # IF - Else Condition

# In[2]:


user_input = int(input("Enter an integer: "))

# Check if the number is even or odd
if user_input % 2 == 0:
    print(f"{user_input} is an even number.")
else:
    print(f"{user_input} is an odd number.")


# # IF - Elif - Else Condition

# In[3]:


score = 75

if score >= 90:
    grade = 'A'
elif score >= 80:
    grade = 'B'
elif score >= 70:
    grade = 'C'
else:
    grade = 'F'

print(f"Your grade is: {grade}")


# # Loops 
# 
# ## for loop
# 
# 

# In[4]:


for i in range(5):
    print(i)


# ## While loop

# In[5]:


count = 0

while count < 5:
    print(count)
    count += 1


# # Nested For loop

# In[6]:


for i in range(3):
    for j in range(2):
        print(i, j)


# ## Break

# In[7]:


for i in range(5):
    if i == 3:
        break  # exits the loop when i is 3
    print(i)


# ## Continue

# In[8]:


for i in range(5):
    if i == 2:
        continue  # skips the rest of the loop body when i is 2
    print(i)


# ## Pass

# In[9]:


for i in range(5): 
    if i == 3:
        pass  # a placeholder, does nothing
    print(i)


# ## input - output

# In[10]:


name = input("Enter your name: ")
print("Hello, " + name + "!")


# ## Lists

# In[11]:


my_list = [1, 2, 3, 4, 5]
print(my_list)


# ## List Methods and Slicing:

# In[12]:


fruits = ['apple', 'banana', 'orange']
fruits.append('grape')
print(fruits[1:3])

#append
numbers = [1, 2, 3]
numbers.append(4)
print(numbers)  # Output: [1, 2, 3, 4]

#extend
list1 = [1, 2, 3]
list2 = [4, 5, 6]
list1.extend(list2)
print(list1)  # Output: [1, 2, 3, 4, 5, 6]

#insert
fruits = ['apple', 'banana', 'cherry']
fruits.insert(1, 'orange')
print(fruits)  # Output: ['apple', 'orange', 'banana', 'cherry']

#remove
numbers = [1, 2, 3, 4, 3]
numbers.remove(3)
print(numbers)  # Output: [1, 2, 4, 3]

#pop
numbers = [1, 2, 3, 4]
popped_element = numbers.pop(2)
print(popped_element)  # Output: 3
print(numbers)  # Output: [1, 2, 4]

#index
numbers = [10, 20, 30, 20, 40]
index = numbers.index(20)
print(index)  # Output: 1


# ## Dictionaries & Dictionary Methods:

# In[13]:


student = {'name': 'John', 'age': 20, 'grade': 'B'}
print(student['name'])


# get(key, default)

student = {'name': 'John', 'age': 20, 'grade': 'B'}
age = student.get('age', 'N/A')
print(age)  # Output: 20

# Using get with a key that doesn't exist
address = student.get('address', 'N/A')
print(address)  # Output: N/A

# keys()

student = {'name': 'John', 'age': 20, 'grade': 'B'}
all_keys = student.keys()
print(all_keys) 

# values()

student = {'name': 'John', 'age': 20, 'grade': 'B'}
all_values = student.values()
print(all_values)

# items()
student = {'name': 'John', 'age': 20, 'grade': 'B'}
all_items = student.items()
print(all_items)  


# ## Set & Set Methods:

# In[14]:


my_set = {1, 2, 3, 4, 5}
my_set.add(6)
print(my_set)


# add(element)
my_set = {1, 2, 3}
my_set.add(4)
print(my_set)

# update(iterable)
set1 = {1, 2, 3}
set2 = {3, 4, 5}
set1.update(set2)
print(set1)

# remove(element)
my_set = {1, 2, 3}
my_set.remove(2)
print(my_set) 

# pop()
my_set = {1, 2, 3, 4}
popped_element = my_set.pop()
print(popped_element)
print(my_set)

# union(iterable)
set1 = {1, 2, 3}
set2 = {3, 4, 5}
union_set = set1.union(set2)
# Alternatively: union_set = set1 | set2
print(union_set)

# intersection(iterable)
set1 = {1, 2, 3}
set2 = {3, 4, 5}
intersection_set = set1.intersection(set2)
# Alternatively: intersection_set = set1 & set2
print(intersection_set) 

# difference(iterable)
set1 = {1, 2, 3}
set2 = {3, 4, 5}
difference_set = set1.difference(set2)
# Alternatively: difference_set = set1 - set2
print(difference_set) 


# ## Introduction to Map 

# In[2]:


def square(x):
    return x**2
numbers = [1, 2, 3, 4]
squared_numbers = map(square, numbers)
print(list(squared_numbers))


# Define a function that doubles even numbers and leaves odd numbers as is
def double_even(num):
    if num % 2 == 0:
        return num * 2
    else:
        return num
 
# Create a list of numbers to apply the function to
numbers = [1, 2, 3, 4, 5]
 
# Use map to apply the function to each element in the list
result = list(map(double_even, numbers))
 
# Print the result
print(result)  # [1, 4, 3, 8, 5]


# In[ ]:




