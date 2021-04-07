require "./methods.rb"

cls

puts "игра виселица, версия 1"

letters = get_letters #todo

errors = 0

bad_letters = []
good_letters = []

while errors < 7 do 
	print_status(letters, good_letters, bad_letters, errors)

	puts "введите след. букву"

	user_input = get_user_input

	result = check_result(user_input, letters, good_letters, bad_letters)

	if (result == -1)
		errors +=1
	elsif (result == 1)
		break
	end

end

print_status(letters, good_letters, bad_letters. errors)


#	if (Gem.win_platform? && ARGV[0])
#		slovo = slovo.encode(ARGV[0].encoding, "cp1251").encode("UTF-8")