#is n a perfect power?
#example : 81 = 3^4 = 9^2, solutions are (3,4) or (9,2)

def isPP(n)
    i, j = 2, 2
    while i**j <= n do
        while i**j <= n do
            return [i, j] if i**j == n
            j+=1
        end
        i+=1
        j=2
    end
    nil
end

print isPP(81)

#better:
def isPP(n)
    # your code
    for a in (2..n) do
      for b in (2..n) do
        return [a,b] if (a**b) == n
        break if (a**b)>n
      end
      return nil if (a**2)>n
    end
end
