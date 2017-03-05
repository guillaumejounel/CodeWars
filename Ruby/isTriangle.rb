#Given the 3 lengths a,b,c, determine if it's a triangle
def isTriangle(a,b,c)
   [a,b,c].max < [a,b,c].min(2).reduce(:+) ? true : false
end

#no need to check, it's a boolean !

def isTriangle(a,b,c)
   [a,b,c].max < [a,b,c].min(2).reduce(:+)
end

#Another way :

def isTriangle(a,b,c)
   a, b, c = [a, b, c].sort
   a + b > c
end
