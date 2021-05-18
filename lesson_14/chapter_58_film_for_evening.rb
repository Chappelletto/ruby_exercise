


file_name = 'movies.txt'

file = File.new(file_name, "r:UTF-8")

movies = file.readlines

puts "Сегодня предлагаем посмотреть: #{movies.sample}"