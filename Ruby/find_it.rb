#Given an array of integers, find which one appears an odd number of times

def find_it(seq)
  seq.find{|i| seq.count(i).odd?}
end

#(find == detect) => return a number
#(select) => return an array contening the number

#another interesting way to do it :

def find_it(seq)
  seq.reduce(:^)
end

#reminder : ^ is the XOR operator
