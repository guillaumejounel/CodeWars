#given of an array of 3+ contening integers either entirely comprised of odd integers
#or entirely comprised of even integers except for a single integer N (return N)
def find_outlier(integers)
    integers.find_all{|i| i.odd?}.length == 1 ? integers.find_all{|i| i.odd?}[0] : integers.find_all{|i| i.even?}[0]
end

puts find_outlier([160, 3, 1719, 19, 11, 13, -21])
#160

puts find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])
#11


#best solution:
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

#integers.partition(&:odd?) split even and odd numbers into 2 elements of an array

#EQUIVALENT :
#.find(&:one?).first
#.find{|x| x.size==1}[0]
