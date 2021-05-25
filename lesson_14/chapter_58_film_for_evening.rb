# encoding: utf-8

current_path = File.dirname(__FILE__)

file_path = current_path + '/movies.txt'

#file_name = 'movies.txt'

if File.exist?(file_path)

	file = File.new(file_path, "r:UTF-8")
	movies = file.readlines
	file.close
	puts "Сегодня предлагаем посмотреть: #{movies.sample}"
else
	puts "Файл не найден"
end