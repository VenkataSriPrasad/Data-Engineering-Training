import json

with open('C:/Users/Venkat Sri Prasad/Downloads/Python/Data Engineering/example_data.json', 'r') as file:
    parsed_dict_from_file = json.load(file)

print("Parsed Dictionary from File:")
print(parsed_dict_from_file)