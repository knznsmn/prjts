'''  Counts the sum of n odd or even numbers
'''

def count(p, n):
    if p == 'odd' or p == 'yes':
        m = 1           # current number
    else:
        m = 2
    i = 1
    sum = m 

    while i < n:
        m += 2      # next number
        sum += m    # adding current and previous
        i += 1      # increment counter
    print(sum)

def adder(p, n):
    if p == 'y':
        n *= n
    else:
        n += n * n
    print(n)

isOdd= input("Do you want the sum of odd numbers? ")
peak = int(input("What's the peak number to add? "))
adder(isOdd, peak)
