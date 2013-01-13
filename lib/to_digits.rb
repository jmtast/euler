# This lib file adds the "turn number into array of digits" method to Fixnum and Bignum classes

class Fixnum
  def to_digits
    self.to_s.split("").map(&:to_i)
  end
end

class Bignum
  def to_digits
    self.to_s.split("").map(&:to_i)
  end
end