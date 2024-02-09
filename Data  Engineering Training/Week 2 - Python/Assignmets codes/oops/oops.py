# Inheritance
class Animal:
    def __init__(self, species):
        self.species = species

class Dog(Animal):
    def __init__(self, name, species):
        super().__init__(species)
        self.name = name

# # Creating a Dog instance
# my_dog = Dog(name="Buddy", species="Canine")

# # Printing values
# print("Dog's Name:", my_dog.name)
# print("Dog's Species:", my_dog.species)

# Polymorphism

# #Method Overloading:
# class MathOperations:
#     def add(self, a, b, c=None):
#         if c is not None:
#             return a + b + c
#         else:
#             return a + b

# # Example usage for method overloading
# math_ops = MathOperations()
# result1 = math_ops.add(2, 3)
# result2 = math_ops.add(2, 3, 4)

# print("Result 1:", result1)
# print("Result 2:", result2)


# Method Overriding:
class Cat(Animal):
    def make_sound(self):
        print("Meow")

def animal_sound(animal):
    animal.make_sound()

# Method Overriding
class Bird(Animal):
    def make_sound(self):
        print("Chirp chirp")

# Example usage for method overriding
cat = Cat(species="Feline")
bird = Bird(species="Avian")

animal_sound(cat)
animal_sound(bird)