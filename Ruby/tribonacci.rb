#Like a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence to generate the next
#the signature are the three first numbers, n is the length of the desired sequence

def tribonacci(signature,n)
  res = []
  n.times {
    res.push(signature.count > 0 ? signature.shift : res[-3..-1].reduce(:+))
  }
  res
end

#another solution:
def tribonacci(s, n)
  for i in 3..n
    s[i] = s[i-1] + s[i-2] + s[i-3]
  end
  return s.slice(0, n)
end

#with Ruby, we can assign new elements out of range of the array!
