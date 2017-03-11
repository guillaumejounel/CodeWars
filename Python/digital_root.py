#A digital root is the recursive sum of all the digits in a number.
#Given n, take the sum of the digits of n. If that value has two digits,
#continue reducing in this way until a single-digit number is produced.

def digital_root(n):
    return n if len(str(n)) == 1 else digital_root(sum(int(i) for i in str(n)))

#a better way :
def digital_root(n):
    return n if n < 10 else digital_root(sum(map(int,str(n))))

# map(int,str(n)) <=> int(i) for i in str(n)
# -> map(x,y) applies the x function to each element of y
