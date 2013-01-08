# PROBLEM 7:
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

require "is_prime.rb"
index = 2
prime = 3
current = prime

until index >= 10001 do
	current += 2
	(prime = current) && (index += 1) if current.prime?
end

puts prime