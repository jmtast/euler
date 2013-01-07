class Fixnum
  def prime?
    return false if self % 2 == 0

    divisor = 3
    number_sqrt = Math.sqrt(self)
  	((self % divisor == 0) ? (return false) : (divisor += 2)) while divisor <= number_sqrt

    true
  end
end


# IMPLEMENTACIÓN VIEJA

# def is_prime (num)
# 	i = 2
# 	return false if num%2 == 0
# 	i = 3
# 	is_prime = true
# 	num_sqrt = Math.sqrt(num)
# 	while i <= num_sqrt
# 		if num%i == 0
# 			is_prime = false
# 			return is_prime
# 		end
# 		i+=2
# 	end
# 	return is_prime
# end

# puts "Ingrese el número (mayor o igual que 3) que desea chequear si es primo o no"
# num = gets()
# if is_prime(num.to_i)
# 	puts "El número #{num.to_i} es primo"
# else
# 	puts "El número #{num.to_i} no es primo"
# end