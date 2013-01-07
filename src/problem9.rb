# PROBLEM 9:
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# 334 es una cota inferior para c, ya que si es menor, a o b deberían ser mayores, y no se cumpliría a < b < c
# 997 es una cota superior para c por el mismo motivo

b = 335
c = 335
a = 1000 - b - c
is_found = false

while c <= 997
	while a < b && !is_found
		a = 1000 - b - c
		if (a*a) + (b*b) == (c*c)
			if a * b * c > 0
				is_found = true
				puts a * b * c
				break
			end
		end
		b -= 1
	end
	b = c-1
	c += 1
end