# Number Adder v0.1

''' This function adds odd or even
'''
def adder(n, m):
    i = 1
    sum = 0 
    print(i)
    if m == "odd":
        while i < n:
            i = i + 2
            sum += i
            print(sum)

isOdd = input("What do you want? ")
peak = int(input("Up to what number? "))
adder(peak, isOdd)


