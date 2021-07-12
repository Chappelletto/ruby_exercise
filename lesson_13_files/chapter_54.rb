#encoding utf-8

name_file = ARGV[0]

if File.exist?('./data/quotes.txt')

	file = File.new('./data/quotes.txt', 'r:UTF-8')

	empty_str = 0
	array_str = []

	line = file.readlines

	line.each { |x| if x == '\n'
					 	empty_str +=1 
					end }

	#if line == '\n'
	#	empty_str += 1 
	#	puts empty_str
	#end

	 

	file.close

	puts "Строк в файле : #{line.size}"
	puts "Пустых строк в файле : #{empty_str}"
	puts "Последние 5 строк:"
	puts empty_str
	
	#puts line
	puts line[-1]
	puts line[-2]
else 
	puts "Файл не найден"
end
