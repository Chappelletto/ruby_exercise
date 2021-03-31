# encodinf: utf-8

puts "введите вариант: 0 - камень, 1 - ножницы, 2 - бумага"

user_choose = gets.to_i

object = ["Камень", "Ножницы", "Бумага"]

comp_choose_object = rand(3)

if user_choose == comp_choose_object
	puts "Ничья. Еще раз!"
	user_choose = gets.to_i
elsif user_choose == 0 && comp_choose_object == 1
	puts "Вы выйграли"
end