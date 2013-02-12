# PROBLEM 21:
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper 
# divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

require '../lib/divisors.rb'
require '../lib/is_prime.rb'

class Fixnum
  def is_amicable?
    amicable = false
    divisors_a = self.divisors
    b = 0
    divisors_a.each{ |divisor| b += divisor}
    divisors_b = b.divisors
    a = 0
    divisors_b.each{ |divisor| a += divisor}
    amicable = true if self == a and a != b
    amicable
  end
end

sum = 0
(1..10000).each do |i|
  sum += i if !i.prime? and i.is_amicable?
end
puts sum