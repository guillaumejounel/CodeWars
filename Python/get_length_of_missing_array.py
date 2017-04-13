#You get an array of arrays.
#If you sort the arrays by their length, you will see, that their length-values are consecutive.
#But one array is missing! You have to write a method, that return the length of the missing array.
#Example: [[1, 2], [4, 5, 1, 1], [1], [5, 6, 7, 8, 9]] --> 3

def get_length_of_missing_array(array_of_arrays):
    if None in array_of_arrays: return 0
    array_of_arrays.sort(key=lambda x: len(x))
    lengthArray = list(map(len,array_of_arrays))
    if (0 in lengthArray) or (len(array_of_arrays)==0): return 0
    for i in range(lengthArray[0],lengthArray[-1]):
        if i not in lengthArray:
            return i

print (get_length_of_missing_array([[None], [None, None, None]]))

#Best:
def get_length_of_missing_array(a):
    lns = a and all(a) and list(map(len, a))
    return bool(lns) and sum(range(min(lns), max(lns) + 1)) - sum(lns)
