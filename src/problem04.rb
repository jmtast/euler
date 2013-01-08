# PROBLEM 4:
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# MAX = 999*999 = 998.001

def check_palindrome(num)
	string = num.to_s
	length = string.length
	last = length-1
	first = 0
	begin
		is_palindrome = (string[first].to_i == string[last].to_i)
		break if !is_palindrome
		first += 1
		last -=1
	end while first <= last
	return is_palindrome
end

n1 = 999
n2 = 998
is_palindrome = false
max = 0
while n1 >= 100
	while n2 >= 100
		num = n1*n2
		is_palindrome = check_palindrome(num)
		max = num if is_palindrome && num > max
		print "#{n1} #{n2} \n"
		n2-=1
	end
	n2 = 998
	n1 -=1
end
puts max