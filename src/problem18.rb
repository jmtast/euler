# PROBLEM 17:
# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

# 3
# 7 4
# 2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

# 75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

# NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge
# with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)

class Element
  def initialize(num)
    @value = num
    @best_sum = 0
  end

  def value
    @value
  end

  def best_sum
    @best_sum
  end

  def set_val(num)
    @value = num
  end

  def set_best_sum(num)
    @best_sum = num
  end
end

class Array
  def printm
    each do |row|
      row.each do |element|
        print "#{element.best_sum} "
      end
      print "\n"
    end
  end
end

matrix = []
File.open("../lib/triangle_input.txt", "r").each_line.with_index do |line, i|
  line.split(" ").each.with_index do |num, j|
    elem = Element.new(num)
    if j == 0
      matrix << [elem]
    else
      matrix[i-j] << elem
    end
  end
end

matrix.each_with_index do |row, i|
  row.each_with_index do |element, j|
    if i > 0
      if j > 0
        block = [matrix[i-1][j].best_sum, matrix[i][j-1].best_sum]
        sum = block.max
        element.set_best_sum(sum + matrix[i][j].value.to_i)
      else
        element.set_best_sum(matrix[i-1][j].best_sum + matrix[i][j].value.to_i)
      end
    else
      if j > 0
        element.set_best_sum(matrix[i][j-1].best_sum + matrix[i][j].value.to_i)
      else
        element.set_best_sum(matrix[i][j].value.to_i)
      end
    end
  end
end


# class Array
#   def each_element(*args, &block)
#     each do |row|
#       row.each do |column|
#         yield(column) if block_given?
#       end
#     end
#   end
# end

matrix.printm

# matrix.each_element do |element|
#   puts element.value
# end

# i = 0
# j = 13
# while i < 14
#   while j >= 0
#     print "#{matrix[i][j].value} "
#     j -= 1
#   end
#   j = 13
#   print "\n"
#   i += 1
# end

















class Node
  def initialize(num)
    @element = num
    @left = nil
    @right = nil
  end

  def element
    @element
  end

  def left
    @left
  end

  def right
    @right
  end

  def set_left(node)
    @left = node
  end

  def set_right(node)
    @right = node
  end

  def print
    puts element
    if left != nil && right != nil
      left.print
      right.print
    end
    right.print if left != nil && right == nil
    left.print if left == nil && right != nil
  end
end

class Tree
  def initialize(node)
    @root = node
  end

  def root
    @root
  end

  def print
    puts root.element
    puts "#{root.left.print} #{root.right.print}"
  end
end