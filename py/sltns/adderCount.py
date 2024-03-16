'''  Counts the sum of n odd or even numbers
'''

def countOdd(n):
    m = 1           # current number
    i = 1
    sum = m 

    while i < n:
        m += 2      # next number
        sum += m    # adding current and previous
        i += 1      # increment counter
    print(sum)

def countEven(n):
    m = 2
    i = 1
    sum = m

    while i < n:
        m += 2
        sum += m
        i += 1
    print(sum)

peak = int(input("What's the peak number to add? "))
countOdd(peak)
countEven(peak)
