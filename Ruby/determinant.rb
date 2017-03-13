# return the determinant of the matrix passed in
def determinant(matrix)
  if matrix[0].count == 1 then matrix[0][0]
  else
    (0...matrix[0].count).to_a.reduce(0) { |s,i|
      s+=((-1)**i)*matrix[0][i]*determinant(matrix[1..-1].collect{|j| j[0...i]+j[i+1..-1]})
    }
  end
end

#This recursive solution stops when the matrix passed in has 1 element (det[[a]] = a)
#Otherwise it calls back the determinant function as it follows :
# | a b c |
# | d e f |   det M = a * det |e f| - b * det |d f| + c * det |d e|
# | g h i |                   |h i|           |g i|           |g h|
#
#That is, the sum of each coefficient of the first line times (-1)^(rank) multiplied by
#the determinant of the matrix formed by deleting the coefficient's line & column.

#Another "cheaty" solution:
require 'matrix'
def determinant(matrix)
  Matrix[*matrix].det
end

#A matrix object (not array) is created thanks to the array matrix : Matrix[*matrix]
#Then this matrix object has a method called "det" that computes the determinant.
