# Test if number is prime
def isPrime(num)
  num<2 ? false : (2...num).to_a.all?{|i| num%i0}
end

#!
#best practise

require 'prime'

def isPrime(num)
  num.prime?
end

#Important : (2...num).to_a, NOT [2...num] !
#Use of .all?
