# main_program.py
import my_module

def execute_greet_function():
    name = input("Enter your name: ")
    result = my_module.greet(name)
    print(result)

if __name__ == "__main__":
    execute_greet_function()