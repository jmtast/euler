# This method prints a matrix from a 2D-Array

class Array
  def printm
    each do |row|
      row.each do |element|
        print "#{element} "
      end
      print "\n"
    end
  end
end