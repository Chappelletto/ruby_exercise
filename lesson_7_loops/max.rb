array = []

puts "Какой длины будет массив случайных чисел?"

lenght = gets.to_i

item = 0

while item <= lenght
	array << rand(0..100)
	item +=1
end

puts array.to_s

puts "Самое большое число: #{array.max}"