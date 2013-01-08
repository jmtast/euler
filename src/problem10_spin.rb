# PROBLEM 10:
#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
#Find the sum of all the primes below two million.

require "is_prime.rb"

sum = 2
current = 3

print "Working..."

while current < 2000000
  sum += current if current.prime?
	current += 2
  print " "
  print " "
  print " "
  print "\b"
  print "\b"
  print "\b"
end
print "\n"
puts "Done!"
puts "Sum = #{sum}"