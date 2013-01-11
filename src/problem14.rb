# PROBLEM 14:
# The following iterative sequence is defined for the set of positive integers:
# 	n -> n/2 (n is even)
# 	n -> 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

class Fixnum
  def collatz
    n = self
    if n % 2 == 0
      n = n/2
    else
      n = 3*n + 1
    end
  end
end

longest_chain = 1
current_collatz = 0
starting_number = 0

for i in 1...1000000
  number = i
  chain = 0
  while number > 1 do
    chain += 1
    number = number.collatz
  end
  (longest_chain = chain) && (current_collatz = number) && (starting_number = i) if chain > longest_chain
end

puts starting_number