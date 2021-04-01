# encoding: utf-8

class Person
	def initialize 
		@count = 23423
	end

	def ultramethod
		puts @count
	end
end

Person.new.ultramethod


# @@var - переменная класса, доступна для каждого объекта класса. Принадлежит классу.
# Используется когда нужна информация о классе. Наследуются и тд

#@var - инстанс переменная или переменная экзепляра, работает в классе, но не наследуется



#методы класса

# Часть 1. Определяем метод с единственным параметром name
def say_hi(name)
	 # Все, что делает этот метод — здоровается с юзером
	puts "Привет, #{name}, как твои дела?"
end

nik = STDIN.gets.chomp.to_s

say_hi "Вадим"
say_hi nik



=begin Чем методы экземпляра отличаются от методов класса

def self.class_method
       puts self
end

=end