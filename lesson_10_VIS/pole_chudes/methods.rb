# В этом файле мы объявим все методы, которые мы используем в игре «Виселица»

# Метод cls, очищающий экран, вызывает системную команду. В Mac OS/Linux —
# clear, в Windows — cls. Оператор || тут необходим на случай, если первый вызов
# пройдет неудачно (например, такой команды нет, как, например и, команды 'cls'
# на Linux). Если первый system вернет false будет вызвана другая команда.
def cls
	system "clear" || system "cls"
end

# Метод get_letters возвращает массив букв загаданного слова, которое было
# передано программе в консоли в качестве параметра.
def get_letters
	# Берем загаданное слово из командной строки
	slovo = ARGV[0]

	# Если при запуске программы не указали слово для отгадывания, мы не можем
  	# продолжать игру, вылетаем с ошибкой
	if (slovo == nil || slovo == "")
		abort "Вы не ввели слово для игры"
	end

	# Разбиваем слово на буквы специальным методом split, который есть у всех
	# объектов класса Строка.
	#
	# Этот метод на вход принимает другую строку (разделитель) и разбивает
	# исходную на массив строк с указанными разделителем. Если в качестве
	# разделитея передать пустую строку (""), метод разобьет строку на символы.
	#
	# А метод encode('UTF-8') переводит строку в кодировку UTF-8.
	return slovo.encode("UTF-8")split("")
end

# Метод get_user_input занимается лишь тем, что спрашивает у пользователя,
# какую букву он хочет попробовать в качестве следующего хода.
def get_user_input
	# Чтобы цикл сработал хотя бы один раз, нужно записать в переменную letter
	# пустую строку.
	letter = ""
	# В цикле будем опрашивать юзера, пока он не введет что-нибудь
	while letter == ""
		letter = STDIN.gets.encode('UTF-8').chomp
	end
	return letter
end


def check_result(user_input, letters, good_letters, bad_letters)
	if (good_letters.include?(user_input) || bad_letters.include?(user_input))
		return 0
	end

	if letters.include? user_input
		good_letters << user_input

		#условие когда отгадано всё слово!
		if good_letters.uniq.sort == letters.uniq.sort
			return 1
		else
			return 0
		end
	else 
		bad_letters << user_input
		return -1
	end
end

def get_word_for_print(letters, good_letters)
	result = ""

	for letter in letters do
		if good_letters.include?(item)
			result += letter + "  "
		else
			result += "__"
		end
	end

	return result

end

#1. Выводить загаданное слово (как в поле чудес) / 
#2. Информацию об ошибках и уже названные буквы
#3. Ошибок > 7 - сообщить о поражениях
#4. слово угадано - сообщить о победе

def print_status(letters, good_letters, bad_letters, errors)
	puts "\nСлово: " + get_word_for_print(letters, good_letters)

	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

	if errors >= 7 
		puts "Вы проиграли :("
	else
		if letters.uniq.size == good_letters.size
			puts "Поздравляем! Вы выиграли! \n\n"
		else 
			puts "У вас осталось попыток " + (7-errors).to_s
		end
	end
end

