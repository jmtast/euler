# PROBLEM 11:
# In the 2020 grid below, four numbers along a diagonal line have been marked in red.

# 08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
# 49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
# 81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
# 52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
# 22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
# 24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
# 32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
# 67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
# 24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
# 21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
# 78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
# 16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
# 86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
# 19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
# 04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
# 88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
# 04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
# 20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
# 20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
# 01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48
# The product of these numbers is 26  63  78  14 = 1788696.

# What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 2020 grid?

require "matrix.rb"


matrix = Matrix[[8, 2, 22, 97, 38, 15, 0, 40, 0, 75, 4, 5, 7, 78, 52, 12, 50, 77, 91, 8],
[49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48, 4, 56, 62, 0],
[81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30, 3, 49, 13, 36, 65],
[52, 70, 95, 23, 4, 60, 11, 42, 69, 24, 68, 56, 1, 32, 56, 71, 37, 2, 36, 91],
[22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80],
[24, 47, 32, 60, 99, 3, 45, 2, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50],
[32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70],
[67, 26, 20, 68, 2, 62, 12, 20, 95, 63, 94, 39, 63, 8, 40, 91, 66, 49, 94, 21],
[24, 55, 58, 5, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72],
[21, 36, 23, 9, 75, 0, 76, 44, 20, 45, 35, 14, 0, 61, 33, 97, 34, 31, 33, 95],
[78, 17, 53, 28, 22, 75, 31, 67, 15, 94, 3, 80, 4, 62, 16, 14, 9, 53, 56, 92],
[16, 39, 5, 42, 96, 35, 31, 47, 55, 58, 88, 24, 0, 17, 54, 24, 36, 29, 85, 57],
[86, 56, 0, 48, 35, 71, 89, 7, 5, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58],
[19, 80, 81, 68, 5, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77, 4, 89, 55, 40],
[4, 52, 8, 83, 97, 35, 99, 16, 7, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66],
[88, 36, 68, 87, 57, 62, 20, 72, 3, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69],
[4, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18, 8, 46, 29, 32, 40, 62, 76, 36],
[20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74, 4, 36, 16],
[20, 73, 35, 29, 78, 31, 90, 1, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57, 5, 54],
[1, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52, 1, 89, 19, 67, 48]]

height = 19
width = 19

i_max = 0
j_max = 0
max_val_h = 0
product = 0

# Cicle to check horizontal products.
for i in 0...height
	for j in 0..width-3
		product = matrix[i,j] * matrix[i,j+1] * matrix[i,j+2] * matrix[i,j+3]
		if product > max_val_h
			max_val_h = product
			i_max = i
			j_max = j
			puts product
		end
	end
end

puts "El producto horizontal más grande es #{max_val_h}, en la posición (i,j) = (#{i_max},#{j_max})"

i_max = 0
j_max = 0
max_val_v = 0
product = 0

# Cicle to check vertical products.
for i in 0...height-3
	for j in 0..width
		product = matrix[i,j] * matrix[i+1,j] * matrix[i+2,j] * matrix[i+3,j]
		if product > max_val_v
			max_val_v = product
			i_max = i
			j_max = j
			puts product
		end
	end
end

puts "El producto vertical más grande es #{max_val_v}, en la posición (i,j) = (#{i_max},#{j_max})"

i_max = 0
j_max = 0
max_val_d = 0
product = 0

# Cicle to check diagonal products.
# diagonal = \
for i in 0...height-3
	for j in 0..width-3
		product = matrix[i,j] * matrix[i+1,j+1] * matrix[i+2,j+2] * matrix[i+3,j+3]
		if product > max_val_d
			max_val_d = product
			i_max = i
			j_max = j
			puts product
		end
	end
end

puts "El producto diagonal más grande es #{max_val_d}, en la posición (i,j) = (#{i_max},#{j_max})"

i_max = 0
j_max = 0
max_val_i_d = 0
product = 0
j = width

# Cicle to check inverse diagonal products.
# inverse diagonal = /
for i in 0...height-3
	while j > 2 do
		product = matrix[i,j] * matrix[i-1,j-1] * matrix[i-2,j-2] * matrix[i-3,j-3]
		if product > max_val_i_d
			max_val_i_d = product
			i_max = i
			j_max = j
			puts product
		end
		j -= 1
	end
end

puts "El producto de la diagonal inversa más grande es #{max_val_i_d}, en la posición (i,j) = (#{i_max},#{j_max})"

if max_val_h > max_val_v
	max_val = max_val_h
else
	max_val = max_val_v
end

if max_val_d > max_val
	max_val = max_val_d
else
	if max_val_i_d > max_val
		max_val = max_val_i_d
	end
end

puts "El máximo valor es: #{max_val}"

# # in each iteration of the for loop I asume that "product" has the previous 4 number product, in this case, the product of the previous
# # number, the current number, and the two numbers that follow.
# for i in 1...width-3
# 	for j in 0..height
# 		if matrix[i-1,j] != 0
# 			product = product / matrix[i-1,j]	# instead of computing each 4 number product each time, I take out from the product the number
# 												# I don't need (the first one) and add the new number I need to multiply.
# 		end
# 		product = product * matrix[i+3,j]
# 		if product > max_val
# 			max_val = product
# 			i_max = i
# 			j_max = j
# 		end
# 	end
# end