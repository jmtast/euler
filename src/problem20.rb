# PROBLEM 20:
# n! means n x (n -1) x ... x 3 x 2 x 1

# For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

factorial = 100
index = 99

while index > 0
  factorial *= index
  index -= 1
end

factorial_digits = factorial.to_s.split("")

digits_sum = 0

factorial_digits.each do |digit|
  digits_sum += digit.to_i
end

puts digits_sum