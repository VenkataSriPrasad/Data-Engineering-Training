import pandas as pd

#1 & 2
file_path = 'C:/Users/Venkat Sri Prasad/Downloads/Python/example.csv'

df = pd.read_csv(file_path)

print(df)


#3rd

# Creating a sample DataFrame
data = {
    'Name': ['Alice', 'Bob', 'Charlie', 'David'],
    'Age': [25, 30, 22, 35],
    'Salary': [50000, 60000, 45000, 70000]
}

df = pd.DataFrame(data)

# Display the original DataFrame
print("Original DataFrame:")
print(df)

# Using query() to filter data
filtered_df = df.query('Age > 25 and Salary > 50000')

# Display the filtered DataFrame
print("\nFiltered DataFrame:")
print(filtered_df)



























