# PROBLEM 10:
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.

require "is_prime.rb"

sum = 2
current = 3
while current < 2000000
	puts current
	if current.prime?
		sum += current
	end
	current += 2
end
puts sum