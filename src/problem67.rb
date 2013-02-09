# PROBLEM 67:
# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

# NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could
# check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)

class Element
  attr_accessor :value, :best_sum
  
  def initialize(num)
    @value = num.to_i
    @best_sum = 0
  end
end

#### This block of code is to build the matrix from file ####

matrix = []
File.open("../lib/triangle.txt", "r").each_line.with_index do |line, i|
  line.split(" ").each.with_index do |num, j|
    elem = Element.new(num)
    if j == 0
      matrix << [elem]
    else
      matrix[i-j] << elem
    end
  end
end

#############################################################

matrix.each_with_index do |row, i|
  row.each_with_index do |element, j|
    previous = 0
    if i > 0
      if j > 0
        block = [matrix[i-1][j].best_sum, matrix[i][j-1].best_sum]
        sum = block.max
        previous = sum
      else
        previous = matrix[i-1][j].best_sum
      end
    else
        previous = matrix[i][j-1].best_sum if j > 0
    end
    element.best_sum = previous + matrix[i][j].value
  end
end

max = 0
matrix.each_with_index do |row, i|
  row.each_with_index do |element, j|
    if i + j == 99 and matrix[i][j].best_sum > max
      max = matrix[i][j].best_sum
    end
  end
end
puts max