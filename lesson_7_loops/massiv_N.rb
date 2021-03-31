# encoding: utf-8

=begin
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = utf-8
  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
=end
puts "Введите N:"

N = gets.to_i

array = []
item = 0 
sum =0

while item <= N
	array << item
	sum +=item
	item +=1
end

puts array.to_s

puts array.sum.to_s

puts "Сумма = #{sum}"

