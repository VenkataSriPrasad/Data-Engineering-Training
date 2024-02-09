
# # Writing CSV data to a file
# with open("example.csv", "w") as file:
#     file.write(csv_data)

# print("CSV data has been saved to 'example.csv' file.")


import csv

# Reading CSV data from the file
with open("example.csv", "r") as file:
    csv_reader = csv.reader(file)
    print("Content of the CSV file:")
    for row in csv_reader:
        print(row)


# 'r' - Reading an existing file
with open("example.txt", "r") as file:
    content = file.read()
    print("Content of the file:", content)

# 'w' - Writing to a new file
with open("new_file.txt", "w") as file:
    file.write("This is a new file.")

# 'a' - Appending to an existing file
with open("example.txt", "a") as file:
    file.write("\nThis is appended content.")

# '+' - Reading and writing to a file
with open("example.txt", "r+") as file:
    content = file.read()
    print("\nContent of the file after reading and before writing:", content)

    # Move the file cursor to the beginning for writing
    file.seek(0)
    file.write("New content added at the beginning.")
    file.seek(0)
    updated_content = file.read()
    print("Updated content of the file:", updated_content)