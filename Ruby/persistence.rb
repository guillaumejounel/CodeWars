#returns the multiplicative persistence of n (number of steps necessary to
#reach a single digit by multiplying the digits in n)

def persistence(n)
    nb=0
    while n.to_s.length != 1 do
        n = n.to_s.split('').map(&:to_i).reduce(&:*)
        nb+=1
    end
    return nb
end


#best solution:

def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end
