class MyClass:
    def __init__(self):
        # Public variable
        self.public_variable = "I'm public"
        
        # Protected variable (conventionally marked with a single leading underscore)
        self._protected_variable = "I'm protected"
        
        # Private variable (conventionally marked with double leading underscores)
        self.__private_variable = "I'm private"

# Creating an object of MyClass
my_instance = MyClass()

# Accessing variables
print("Public Variable:", my_instance.public_variable)
print("Protected Variable:", my_instance._protected_variable)
print("Private Variable:", my_instance._MyClass__private_variable)