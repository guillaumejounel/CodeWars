def sum_two_smallest_numbers(numbers)
  posint = numbers.select{|i| i >= 0}.sort
  posint[0] + posint[1]
  #numbers.min(2).reduce(:+)
end
