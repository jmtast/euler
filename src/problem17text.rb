# PROBLEM 17:
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen)
#contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

require "../lib/to_digits.rb"

# one = 3
# two = 3
# three = 5
# four = 4
# five = 4
# six = 3
# seven = 5
# eight = 5
# nine = 4
# ten = 3

# eleven = 6
# twelve = 6
# thirteen = 8
# fourteen = 8
# fifteen = 7
# sixteen = 7
# seventeen = 9
# eighteen = 8
# nineteen = 8
# twenty = 6

# thirty = 6
# forty = 5
# fifty = 5
# sixty = 5
# seventy = 7
# eighty = 6
# ninety = 6
# hundred = 7
# hundredand = 10
# thousand = 8

one = " one "
two = " two "
three = " three "
four = " four "
five = " five "
six = " six "
seven = " seven "
eight = " eight "
nine = " nine "
ten = " ten "

eleven = " eleven "
twelve = " twelve "
thirteen = " thirteen "
fourteen = " fourteen "
fifteen = " fifteen "
sixteen = " sixteen "
seventeen = " seventeen "
eighteen = " eighteen "
nineteen = " nineteen "
twenty = " twenty "

thirty = " thirty "
forty = " forty "
fifty = " fifty "
sixty = " sixty "
seventy = " seventy "
eighty = " eighty "
ninety = " ninety "
hundred = " hundred "
hundredand = " hundred and "
thousand = " thousand "

letters_used = 0

for i in 450..460
  number = i.to_digits
  print "#{number} "
  ones = number[(number.size)-1]
  #print "#{ones} "
  tens = number[(number.size)-2] if i > 9
  hundreds = number[(number.size)-3] if i > 99
  #puts ""
  #print "#{hundreds} #{tens} #{ones}"
  #puts ""

if i > 99
    #puts hundreds
    case hundreds
    when 1
      if tens > 0 or ones > 0
        print "#{one} #{hundredand}"
      else
        puts "#{one} #{hundred}"
      end

    when 2
      if tens > 0 or ones > 0
        print "#{two} #{hundredand}"
      else
        puts "#{two} #{hundred}"
      end

    when 3
      if tens > 0 or ones > 0
        print "#{three} #{hundredand}"
      else
        puts "#{three} #{hundred}"
      end

    when 4
      if tens > 0 or ones > 0
        print "#{four} #{hundredand}"
      else
        puts "#{four} #{hundred}"
      end

    when 5
      if tens > 0 or ones > 0
        print "#{five} #{hundredand}"
      else
        puts "#{five} #{hundred}"
      end

    when 6
      if tens > 0 or ones > 0
        print "#{six} #{hundredand}"
      else
        puts six += hundred
      end

    when 7
      if tens > 0 or ones > 0
        print "#{seven} #{hundredand}"
      else
        puts "#{seven} #{hundred}"
      end

    when 8
      if tens > 0 or ones > 0
        print "#{eight} #{hundredand}"
      else
        puts eight += hundred
      end

    when 9
      if tens > 0 or ones > 0
        print "#{nine} #{hundredand}"
      else
        puts "#{nine} #{hundred}"
      end
    end

  #puts letters_used

  if i > 9
    #print "#{tens} "
  
    case tens
    when 1
      print ten if ones == 0
      print eleven if ones == 1
      print twelve if ones == 2
      print thirteen if ones == 3
      print fourteen if ones == 4
      print fifteen if ones == 5
      print sixteen if ones == 6
      print seventeen if ones == 7
      print eighteen if ones == 8
      print nineteen if ones == 9

    when 2
      print twenty

    when 3
      print thirty

    when 4
      print forty

    when 5
      print fifty

    when 6
      print sixty

    when 7
      print seventy

    when 8
      print eighty

    when 9
      print ninety
    end
    #puts letters_used
  end

    #puts letters_used

  case ones
  when 1
    puts one if tens != 1

  when 2
    puts two if tens != 1

  when 3
    puts three if tens != 1

  when 4
    puts four if tens != 1

  when 5
    puts five if tens != 1

  when 6
    puts six if tens != 1

  when 7
    puts seven if tens != 1

  when 8
    puts eight if tens != 1

  when 9
    puts nine if tens != 1
  end


  end

  print "#{one} #{thousand}" if i == 1000
end

#puts letters_used