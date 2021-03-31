# encoding: utf-8

#Мой какой-то квест с различными вариантами действий

#Кусок кода для нормальной работы с русской кодировкой
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#Начало квеста
puts "Проснулся утром выходного дня. Что будем делать?"

puts "1. Почитать Улисса Джойса"
puts "2. Позаниматься ruby"
puts "3. Посмотреть мемы"

#предоставляем пользователю выбрать вариант действий
choice = gets.chomp

if choice == "1"	
	puts "Вы берёт в руки книгу и начинаете читать."
end

if choice == "2"
	puts "Вы садитесь за компьютер и заходите на руби раш"	
end

if choice == "3"
	puts "Вы садитесь за компьютер и начинаете смотреть мемчики"
end

#Надо еще продоолжить