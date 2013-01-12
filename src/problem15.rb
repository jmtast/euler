# PROBLEM 15:
# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.

# How many routes are there through a 20x20 grid?

# To calculate the ways to reach some position (i,j) in a nxn matrix, you can sum the ways to reach the position (i-1,j) and the position (i,j-1) recursively.
# I will use a DP (dynamic programming) approach to solve this problem, since it's recursive instances calculates the same values lot's of times, so memoization
# should come in handy.

def grid_routes(i, j, routes)
  temp = j && j = i && i = temp if i > j        # If the number we want to calculate is in the lower triangle of the matrix, we swap it to use only the upper triangle
  return routes[i][j] if routes[i][j] > -1
  routes[i][j] = 2 * grid_routes(i-1, j, routes) if i == j
  routes[i][j] = grid_routes(i-1, j, routes) + grid_routes(i, j-1, routes) if j > i
  routes[i][j]
end

dimension = 20        # This is the size of the grid I want to calculate

size = dimension + 1  # This is to fix the offset that appears from counting the grid starting from 1 (like in the problem's definition) or starting from 0 (like in Ruby's data structures)

routes = Array.new(size)
for i in 0...size
  routes[i] = Array.new(i + 1)
  for j in i...size
    routes[i][j] = -1
  end
end

for j in 0...size
  routes[0][j] = 1
end

puts grid_routes(dimension, dimension, routes)