# user_input = float(input("Enter a number: "))

# # Check if the number is positive, negative, or zero
# if user_input > 0:
#     print("The entered number is positive.")
# elif user_input < 0:
#     print("The entered number is negative.")
# else:
#     print("The entered number is zero.")



# Example: Checking if a number is even or odd

# # Get user input
# user_input = int(input("Enter an integer: "))

# # Check if the number is even or odd
# if user_input % 2 == 0:
#     print(f"{user_input} is an even number.")
# else:
#     print(f"{user_input} is an odd number.")


score = 75

if score >= 90:
    grade = 'A'
elif score >= 80:
    grade = 'B'
elif score >= 70:
    grade = 'C'
else:
    grade = 'F'

print(f"Your grade is: {grade}")


for i in range(5):
    print(i)