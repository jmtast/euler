# Fixnum to binary

class Fixnum
  def to_bin
    division = self
    remainder = 0
    result = []
    while division >= 1 do
      remainder = division % 2
      division = division / 2
      result.unshift(remainder) # This adds in front of the array
    end
    print result
    puts ""
  end
end