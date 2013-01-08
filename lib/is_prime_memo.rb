# This is a memoized version of the prime checking program.
# It has stored all the prime numbers under 2.000.000, and uses them to calculate if a number is  prime or not, up to the number 3.999.972.000.049 = 1999993^2

class Fixnum
  def prime?
    if self >= 3999972000049
      puts "Whoa! Whoa! Whoa! That's a big number! I'm pretty sure I don't feel like calculating that much. Sorry :("
      return
    end
    return false if self % 2 == 0
    i = 0
    if self <= 2000000
      while self >= primes[i]
        return true if self == primes[i]
        i += 1
      end
    end

    divisor = primes[i]
    number_sqrt = Math.sqrt(self)
    until divisor > number_sqrt do
      return false if self % divisor == 0
      i += 1
      divisor = primes[i]
      puts divisor
    end
  end
end