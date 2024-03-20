# This program counts how many times a character
# appeared in the input.

def c_counter(s):
    d = dict()
    for item in s:
        if item not in d:
            d[item] = 1
        else:
            d[item] += 1
    return d

smart = input("Sss: ")
print(c_counter(smart))
