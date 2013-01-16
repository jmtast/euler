# PROBLEM 17:
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen)
#contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

require "../lib/to_digits.rb"

one = 3
two = 3
three = 5
four = 4
five = 4
six = 3
seven = 5
eight = 5
nine = 4
ten = 3

eleven = 6
twelve = 6
thirteen = 8
fourteen = 8
fifteen = 7
sixteen = 7
seventeen = 9
eighteen = 8
nineteen = 8
twenty = 6

thirty = 6
forty = 5
fifty = 5
sixty = 5
seventy = 7
eighty = 6
ninety = 6
hundred = 7
hundredand = 10
thousand = 8

letters_used = 0

for i in 1..1000
  number = i.to_digits
  ones = number[(number.size)-1]
  tens = number[(number.size)-2] if i > 9
  hundreds = number[(number.size)-3] if i > 99

  if i > 99
    case hundreds
    when 1
      if tens > 0 or ones > 0
        letters_used += one + hundredand
      else
        letters_used += one + hundred
      end

    when 2
      if tens > 0 or ones > 0
        letters_used += two + hundredand
      else
        letters_used += two + hundred
      end

    when 3
      if tens > 0 or ones > 0
        letters_used += three + hundredand
      else
        letters_used += three + hundred
      end

    when 4
      if tens > 0 or ones > 0
        letters_used += four + hundredand
      else
        letters_used += four + hundred
      end

    when 5
      if tens > 0 or ones > 0
        letters_used += five + hundredand
      else
        letters_used += five + hundred
      end

    when 6
      if tens > 0 or ones > 0
        letters_used += six + hundredand
      else
        letters_used += six + hundred
      end

    when 7
      if tens > 0 or ones > 0
        letters_used += seven + hundredand
      else
        letters_used += seven + hundred
      end

    when 8
      if tens > 0 or ones > 0
        letters_used += eight + hundredand
      else
        letters_used += eight + hundred
      end

    when 9
      if tens > 0 or ones > 0
        letters_used += nine + hundredand
      else
        letters_used += nine + hundred
      end
    end
  end

  if i > 9
    case tens
    when 1
      letters_used += ten if ones == 0
      letters_used += eleven if ones == 1
      letters_used += twelve if ones == 2
      letters_used += thirteen if ones == 3
      letters_used += fourteen if ones == 4
      letters_used += fifteen if ones == 5
      letters_used += sixteen if ones == 6
      letters_used += seventeen if ones == 7
      letters_used += eighteen if ones == 8
      letters_used += nineteen if ones == 9

    when 2
      letters_used += twenty

    when 3
      letters_used += thirty

    when 4
      letters_used += forty

    when 5
      letters_used += fifty

    when 6
      letters_used += sixty

    when 7
      letters_used += seventy

    when 8
      letters_used += eighty

    when 9
      letters_used += ninety
    end
  end

  case ones
  when 1
    letters_used += one if tens != 1

  when 2
    letters_used += two if tens != 1

  when 3
    letters_used += three if tens != 1

  when 4
    letters_used += four if tens != 1

  when 5
    letters_used += five if tens != 1

  when 6
    letters_used += six if tens != 1

  when 7
    letters_used += seven if tens != 1

  when 8
    letters_used += eight if tens != 1

  when 9
    letters_used += nine if tens != 1
  end

  letters_used += one + thousand if i == 1000
end

puts letters_used