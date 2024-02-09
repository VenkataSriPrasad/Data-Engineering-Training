import csv
import pandas as pd

rows = []

# Use double backslashes or a forward slash in the file path, or use a raw string (r"your\file\path")
file_path = "C:/Users/Venkat Sri Prasad/Downloads/Python/Data Engineering/cpudatatextad.csv"

with open(file_path, 'r') as file:
    csvreader = csv.reader(file)
    header = next(csvreader)
    for row in csvreader:
        rows.append(row)

print(header)
print(rows)


with open('C:/Users/Venkat Sri Prasad/Downloads/Python/Data Engineering/cpudatatextad.csv') as file:
    content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)

import csv

data_to_write = [
    ["Name", "Age", "City"],
    ["John", 25, "New York"],
    ["Alice", 30, "San Francisco"]
]

file_path =  "C:/Users/Venkat Sri Prasad/Downloads/Python/Data Engineering/cpudatatextad.csv"

#Appending to a CSV file:
with open(file_path, 'w', newline='') as file:
    csvwriter = csv.writer(file)
    csvwriter.writerows(data_to_write)


data_to_append = ["Bob", 22, "Los Angeles"]

with open(file_path, 'a', newline='') as file:
    csvwriter = csv.writer(file)
    csvwriter.writerow(data_to_append)


#Reading from a CSV file:
with open(file_path, 'r') as file:
    csvreader = csv.reader(file)
    for row in csvreader:
        print(row)


#using pandas
        


# Writing to a CSV file
df_to_write = pd.DataFrame({
    "Name": ["John", "Alice"],
    "Age": [25, 30],
    "City": ["New York", "San Francisco"]
})

df_to_write.to_csv("pandas_example.csv", index=False)

# Appending to a CSV file
df_to_append = pd.DataFrame({
    "Name": ["Bob"],
    "Age": [22],
    "City": ["Los Angeles"]
})

df_to_append.to_csv("pandas_example.csv", mode='a', header=False, index=False)

# Reading from a CSV file
df_read = pd.read_csv("pandas_example.csv")
print(df_read)