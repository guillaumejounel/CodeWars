#remove the smallest element of an array of integers
def remove_smallest(numbers)
  numbers.delete_at(numbers.index(numbers.min) || numbers.length)
  return numbers
end
