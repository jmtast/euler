# PROBLEM 15:
# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.

# How many routes are there through a 20x20 grid?

# To calculate the ways to reach some position (i,j) in a nxn matrix, you can sum the ways to reach the position (i-1,j) and the position (i,j-1) recursively.

def grid_routes(i,j)
  routes = 0
  return routes = 1 if i == 0 || j == 0
  return routes = 2 if i == 1 && j == 1
  return routes += grid_routes(i-1,j) + grid_routes(i,j-1) if i > 1 && j > 1
  return routes += grid_routes(i-1,j) if i > 1 && j == 1
  return routes += grid_routes(i,j-1) if j > 1 && i == 1
end

size = 20
puts grid_routes(size,size)/2



# 1  1  1  1  1
# 1  2  3  4  5
# 1  3  6  10 15
# 1  4  10 20 35
# 1  5  15 35 70