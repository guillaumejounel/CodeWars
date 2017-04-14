#Implement the function unique_in_order which takes as argument a sequence and
#returns a list of items without any elements with the same value next to each
#other and preserving the original order of elements

def unique_in_order(iterable):
    res=[]
    tab = list(iterable)
    res.append(tab[0])
    for i in range(1,len(tab)):
        if tab[i]!=tab[i-1]:
            res.append(tab[i])
    return res

print unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
print unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
print unique_in_order([1,2,2,3,3])       == [1,2,3]
