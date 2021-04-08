class Person
	def initialize(man_name, father_name)
		@man_name = man_name
		@father_name = father_name		
	end

	def full_name
		puts man_name + ' ' + father_name
	end
end