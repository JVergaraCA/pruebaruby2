# #ejercicio1 ..

# # #Se tiene el siguiente código que no funciona, 
# # para arreglarlo se pide que método1 
# # funcione como método de instancia.

class T
	def method1()
		puts "DESAFIO!"
	end
end
x = T.new
x.method1()

# #ejercicio2 .. 

#  Se tiene el siguiente código que no funciona, 
#  para arreglarlo se pide que método1 funcione
#  como método de clase.

 class T
 	def self.method1()
 	end 
 end



# # # ejercicio3 ..

# # # Se tiene el siguiente código,
# # # se pide convertir la clase en un módulo.

module Prueba
 	A = 5
end

# # #ejercicio4

# # #Se tiene el siguiente objeto.
# # #Pero tiene un problema menor, arreglarlo.

class Complejo
	attr_accessor :x , :y
	def initialize(x, y)
		@x = x
		@y = y 
	end
		def +(complejo)
			complejo_array = []
			 x = Complejo.new(@x + complejo.x, @y + complejo.y)
			 complejo_array << x
		end 
	end





# #ejercicio5

# #Se tienen los siguientes objetos:
# # Se pide que:
# # Q herede de T ..
# # Q al hacer inicializado llame a method1
# # method1 debe devolver un número al azar
# # El método devuelto debe ser guardado en una variable de instancia de Q


class T

	def method1 
		metodo_array =[]
		5.times do |i|
			x = T.new(rand(1..5))
			metodo_array << x
	end
	metodo_array
end

class Q < T
	def initialize()
		super
 	end
end
print Q.new


# #ejercicio6 ..
# # crear el módulo Stockable, este módulo introduce la variable stock y
# #  debe tener un método llamado has_stock?, 
# #  que devuelva true si el stock es mayor que cero.


module Priceable
    attr_accessor :price
    def discoutend_price(discount)
        @price - @price * discount
    end
end
class Product
    include Priceable
    def initialize(price)
        @price = price
    end
end
module Stockable
	attr_accessor :stock
	def has_stock(stock)
		@stock = stock
		if stock > 0
			print true
		else
			print false
		end
	end
end

# ejercicio7 ..

# Modificar T, Q y Car para que Car pueda 
# contar las instancias respectivas de T y Q,
# además crear métodos dentro de car para obtener 
# el número de instancias de cada uno.
# Para probar Crear 20 instancias de T y 25 de Q dentro de Main.

class Car
	@@t_instances = 0
	@@q_instances = 0
end

class T < Car
	def initialize
	    @@t_instances +=1
    end
    def self.init_1
        @@t_instances
    end
end

class Q < Car
	def initialize
	    @@q_instances +=1
	end
	def self.init_2
		@@q_instances
	end
end
module Calcular
	def self.instancias
		20.times do 
			t = T.new
		end
		25.times do 
			q = Q.new
		end
		puts T.init_1
		puts Q.init_2
	end
end
Calcular::instancias














end
