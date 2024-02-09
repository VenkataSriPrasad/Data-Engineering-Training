# from functools import reduce
 
# def unique(list1):
 
#     # Print directly by using * symbol
#     ans = reduce(lambda re, x: re+[x] if x not in re else re, list1, [])
#     print(ans)
 
 
# # driver code
# list1 = [10, 20, 10, 30, 40, 40]
# print("the unique values from 1st list is")
# unique(list1)
 
 
# list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
# print("\nthe unique values from 2nd list is")
# unique(list2)



# import operator as op
# # function to get unique values
 
 
# def unique(list1):
 
#     # initialize a null list
#     unique_list = []
 
#     # traverse for all elements
#     for x in list1:
#         # check if exists in unique_list or not
#         if op.countOf(unique_list, x) == 0:
#             unique_list.append(x)
#     # print list
#     for x in unique_list:
#         print(x)
 
# # driver code
# list1 = [10, 20, 10, 30, 40, 40]
# print("the unique values from 1st list is")
# unique(list1)
 
# list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
# print("\nthe unique values from 2nd list is")
# unique(list2)




# #...............................



# import pandas as pd
 
# # function to get unique values
# def unique(list1):
#     unique_list = pd.Series(list1).drop_duplicates().tolist()
#     for x in unique_list:
#         print(x)
 
# # driver code
# list1 = [10, 20, 10, 30, 40, 40]
# print("the unique values from 1st list is")
# unique(list1)
 
# list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
# print("\nthe unique values from 2nd list is")
# unique(list2)
# #This code is contributed by Vinay Pinjala.

# #................................


# # using numpy.unique
# import numpy as np
 
# def unique(list1):
#     x = np.array(list1)
#     print(np.unique(x))
 
 
# # driver code
# list1 = [10, 20, 10, 30, 40, 40]
# print("the unique values from 1st list is")
# unique(list1)
 
 
# list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
# print("\nthe unique values from 2nd list is")
# unique(list2)

# #...............................

# from collections import Counter
 
# # Function to get unique values
 
 
# def unique(list1):
 
#     # Print directly by using * symbol
#     print(*Counter(list1))
 
 
# # driver code
# list1 = [10, 20, 10, 30, 40, 40]
# print("the unique values from 1st list is")
# unique(list1)
 
 
# list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
# print("\nthe unique values from 2nd list is")
# unique(list2)


# #.............................

# strs = ['ccc', 'aaaa', 'd', 'bb']
# print(sorted(strs, key=len))  ## ['d', 'bb', 'ccc', 'aaaa']




# # Import JSON module
# import json
 
# # Define JSON string
# jsonString = '{ "id": 121, "name": "Naveen", "course": "MERN Stack"}'
 
# # Convert JSON String to Python
# student_details = json.loads(jsonString)
 
# # Print Dictionary
# print(student_details)
 
# # Print values using keys
# print(student_details['name'])
# print(student_details['course'])


# # Python program to demonstrate
# # Conversion of JSON data to
# # dictionary

# import json

# # Sample data to write to the JSON file
# data_to_write = {
#     "name": "John",
#     "age": 30,
#     "city": "New York",
#     "isStudent": False
# }

# # Specify the file name
# json_file_name = 'data.json'

# # Write data to the JSON file
# with open(json_file_name, 'w') as json_file:
#     json.dump(data_to_write, json_file, indent=2)  # indent is optional for pretty formatting

# print(f"Data has been written to {json_file_name}")
 
# import json

# # JSON-formatted string
# json_string = '{"name": "John", "age": 30, "city": "New York"}'

# # Convert JSON string to Python dictionary
# python_dict = json.loads(json_string)

# # Display the resulting Python dictionary
# print(python_dict)

# import json

# # Specify the JSON file name with double backslashes or a raw string
# json_file_name = r"C:\Users\Venkat Sri Prasad\Downloads\example_data.json"

# # Read JSON data from file and convert it to Python object
# with open(json_file_name, 'r') as json_file:
#     python_object = json.load(json_file)

# # Display the resulting Python object (dictionary in this case)
# print(python_object)


import json

# Nested JSON-formatted string
nested_json_string = '''
{
  "name": "John",
  "age": 30,
  "address": {
    "city": "New York",
    "zipcode": "10001"
  },
  "courses": ["Math", "Physics", "Computer Science"]
}
'''

# Convert nested JSON string to Python dictionary
nested_dict = json.loads(nested_json_string)

# Display the resulting Python dictionary
print(nested_dict)