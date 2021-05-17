# encoding: utf-8


file = File.new('./data/quotes.txt', 'r:UTF-8')

#count_str = file.readlines.size
lines = file.readlines

empty_string = 0



lines.each {|x| if x == "\n" then empty_string += 1 end}

=begin
lines.each_with_index do |line, index|
  # Если строка состоит из одного символа "\n", увеличиваем счетчик пустых
  # строк.
  if line == "\n"
    empty_string += 1
  end
end 
=end


#puts "Всего строк #{count_str}"
puts empty_string