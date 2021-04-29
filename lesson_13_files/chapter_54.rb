file = File.new('./data/quotes.txt', 'r:UTF-8')

lines = file.readlines.size

lines

puts "Всего строк #{lines}"