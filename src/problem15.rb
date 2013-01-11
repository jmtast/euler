# PROBLEM 15:
# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.

# How many routes are there through a 20x20 grid?

# To calculate the ways to reach some position (i,j) in a nxn matrix, you can sum the ways to reach the position (i-1,j) and the position (i,j-1) recursively.

def grid_routes(i,j)
  routes = 2 if i == 1 && j == 1
  routes += grid_routes(i-1,j) + grid_routes(i,j-1) if i > 1 && j > 1
  routes += grid_routes(i-1,j) if j > 1
  routes += grid_routes(i,j-1) if i > 1
end

puts grid_routes(20,20)