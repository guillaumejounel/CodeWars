#sequence is an Arithmetic Progression with at least 3 numbers.
#The missing term will never be the first or last one.

def find_missing(sequence):
    r1 = sequence[1]-sequence[0]
    r2 = sequence[-1]-sequence[-2]
    r = r1 if abs(r1)<=abs(r2) else r2
    previous=sequence[0]
    for term in sequence[1:]:
        if term-previous != r:
            return previous+r
        previous = term



print find_missing([1,2, 3, 4, 5, 6, 8, 9])

#best:
def find_missing(sequence):
    t = sequence
    return (t[0] + t[-1]) * (len(t) + 1) / 2 - sum(t)

#This simply computes r with the first, the last number and the length of the sequence
#If we know r and the length of the sequence (len(sequence)+1), we can compute its sum
#Minus the sum of the actual sequence, we obtain the missing number.
