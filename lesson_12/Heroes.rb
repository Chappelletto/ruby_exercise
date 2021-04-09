#encoding utf-8 

puts "Врага какого персонажа вы хотите узнать?"

hero = STDIN.gets.encode('utf-8').chomp

case hero
when "Бэтмен", "batman"
	puts "Джокер"
when "Шерлок"
	puts "Мориарти"
else
	puts "Враг не найден"
end