# encodinf: utf-8

puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"

user_choose = gets.to_i

object = ["Камень", "Ножницы", "Бумага"]

comp_choose_object = rand(3)

if user_choose == comp_choose_object
	puts "Ничья!"
elsif user_choose == 0 && comp_choose_object == 1
	puts "Вы выкинулии #{object[0]}. А компьютер выкинул #{object[1]} Вы выйграли!"
elsif user_choose == 0 &&comp_choose_object == 2
	puts "Вы выкинулии #{object[0]}. А компьютер выкинул #{object[2]} Вы проиграли!"
elsif user_choose == 1 && comp_choose_object == 0
	puts "Вы выкинулии #{object[1]}. А компьютер выкинул #{object[0]} Вы проиграли!"
elsif user_choose == 1 && comp_choose_object == 2
	puts "Вы выкинулии #{object[1]}. А компьютер выкинул #{object[2]} Вы выйграли!"
elsif user_choose == 2 && comp_choose_object == 0
	puts "Вы выкинулии #{object[2]}. А компьютер выкинул #{object[0]} Вы выйграли!"
elsif user_choose == 2 && comp_choose_object == 1
	puts "Вы выкинулии #{object[2]}. А компьютер выкинул #{object[1]} Вы проиграли!"
end