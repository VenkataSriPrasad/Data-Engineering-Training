class userMainCode(object):
    @classmethod
    def findindex(cls, input1, input2):
        xor_total = 0

        for num in input2:
            xor_total ^= num

        xor_prefix = 0
        special_number_index = -1

        for i in range(input1):
            xor_prefix ^= input2[i]
            xor_suffix = xor_total ^ xor_prefix

            if xor_prefix > xor_suffix:
                special_number_index = i
                break

        return special_number_index

# Example usage:
obj = userMainCode()
result = obj.findindex(4, [4, 3, 2, 9])
print(result)  # Output: 3

# Example 1:
obj = userMainCode()
result = obj.findindex(6, [4, 2, 5, 7, 1, 3])
print(result)  # Output: 0