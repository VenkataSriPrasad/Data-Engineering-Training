# Class definition
# class Dog:
#     def __init__(self, name, age):
#         self.name = name
#         self.age = age

# # Object instantiation
# my_dog = Dog(name="Buddy", age=3)
# print(f"My dog's name is {my_dog.name} and is {my_dog.age} years old.")

# #Class Creation
# class MyClass:
#     def __init__(self):
#         self._protected_variable = "I'm protected"
#         self.__private_variable = "I'm private"


#constructor  
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
        print(self.model, self.make)

my_car = Car(make="Toyota", model="Camry")