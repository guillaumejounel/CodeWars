#returns the next bigger number formed by the same digits of a positive integer number
#if there is no solution, it returns -

def next_bigger(n)
  n.to_s.chars.permutation.to_a.map{|i| i.join.to_i}.each{|i| if i>n then return i end }
  return -1
end
