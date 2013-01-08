# Por convención, los metodos que devuelven bool llevan '?' al final, y tampoco
# dejo espacio antes del '('.
def is_prime?(number)
  # No me hace falta el i = 2, el i = 3 lo pisa o la funcion retorna.
  return false if number % 2 == 0

  # No hace falta la variable is_prime. Si el loop termina es primo,
  # y devuelvo true; si encuentro un divisor, devuelvo false.
  # No nos gustan las variables de una sola letra, es poco descriptivo
  # y en general todos los editores de texto tienen autocomplete.
  divisor = 3
  number_sqrt = Math.sqrt(number)
  while divisor <= number_sqrt # No hacen falta los paréntesis
    # Dejo un espacio antes y dps de cada operador, por ejemplo '%' y '+='
    return false if number % divisor == 0
    divisor += 2
  end

  true
end

# Llamás a '.to_i' 3 veces, asi que directamente lo saco factor común después
# del 'gets()'.
# Puedo usar el operador ternario para saber qué string imprimir, sin repetir
# todo por un simple 'no'.

puts "Ingrese el número (mayor o igual que 3) que desea chequear si es primo"
number = gets().to_i
puts "El número #{number}#{is_prime?(number) ? '' : ' no'} es primo."

# What if I told you...
# que podemos agregarle el método '.prime?' a la clase de los números?
# fijate primero que:
#   1.class
#   => Fixnum
# con lo cual ya sabemos cual es la clase que tenemos que tocar
# (esto es porque seguro pensabas que la clase se llamaba 'Integer').

class Fixnum
  def prime?
    return false if self % 2 == 0

    divisor = 3
    number_sqrt = Math.sqrt(self)
    # Fijate que aca meto el if ternario y el while postfijo...no me parece que
    # se gane TANTO haciendo esto, si bien tenés menos líneas de código, es un
    # poco más críptico de leer.
    ((self % divisor == 0) ? (return false) : (divisor += 2)) while divisor <= number_sqrt

    true
  end
end

# Con esto lo que gano es poder hacer
#   5.prime?
#   => true
# Para eso copio la implementacion de arriba con una modificacion:
# como el numero ya no viene en una variable sino que es el recibidor
# del mensaje '.prime?', se le hace referencia con 'self'
# (como 'this' en java o C++).

puts "Vamos los objetos!"
puts "Ingrese el número (mayor o igual que 3) que desea chequear si es primo"
number = gets().to_i
puts "El número #{number}#{number.prime? ? '' : ' no'} es primo."
