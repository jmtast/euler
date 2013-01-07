# PROBLEM 7:
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?


def is_prime (prime_list,num)
	return false if num%2 == 0
	i = 1
	prime = prime_list[i]
	is_prime = true
	num_sqrt = Math.sqrt(num)
	while prime <= num_sqrt
		if num%prime == 0
			is_prime = false
			return is_prime
		end
		i+=1
		prime = prime_list[i]
	end
	return is_prime
end

prime_list = []
prime_list.push(2)
prime_list.push(3)
current = prime_list[prime_list.length-1]+2
begin
	if is_prime(prime_list,current)
		prime_list.push(current)
	end
	current+=2
end while prime_list.length < 10001
puts prime_list[prime_list.length-1]