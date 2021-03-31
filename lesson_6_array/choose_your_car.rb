# encoding: utf-8

cars = ["bmw", "mersedes", "vag", "reno", "Lada"]

puts "У нас всего " + cars.size.to_s + " машин. Вам какую?"

choose = gets.to_i

puts "Поздравляем, вы получили: "

if choose > 0 && choose < 5
	puts cars[choose]
else 
	puts "Извините, машины с таким номером у нас нет :("
end