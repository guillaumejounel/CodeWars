#A Narcissistic Number is a number which is the sum of its own digits,
#each raised to the power of the number of digits.
#The function returns true with a narcissistic number, false otherwise.

def narcissistic(value):
    return value == sum([int(i)**len(str(value)) for i in str(value)])
