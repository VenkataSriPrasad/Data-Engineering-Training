# Writing to a file
with open("example.txt", "w") as file:
    file.write("Hello, this is a sample text.")

# Reading from a file
with open("example.txt", "r") as file:
    content = file.read()
    print("Content of the file:")
    print(content)

with open("example.txt", "r") as file:
    print("Content of the file:")
    line = file.readline()
    while line:
        print(line.strip())  # Strip to remove newline characters
        line = file.readline()

# Appending to a file
with open("example.txt", "a") as file:
    file.write("\nThis is appended content.")

# Reading from the file after appending
with open("example.txt", "r") as file:
    appended_content = file.read()
    print("\nContent after appending:")
    print(appended_content)

# Deleting the file
import os

file_path = "example.txt"
try:
    os.remove(file_path)
    print(f"\nFile '{file_path}' deleted successfully.")
except FileNotFoundError:
    print(f"\nFile '{file_path}' not found.")
except Exception as e:
    print(f"\nAn error occurred while deleting the file: {e}")