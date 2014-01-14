class Employee
attr_accessor :name, :title

	@@employee_count = 0

	def initialize(name, title, boss)   # name, id, title, salary, boss, dept, vacation_days
		@name = name
		@title = title	
		@@employee_count += 1
		# @id = id
		# @title = title
		# @salary = salary
		@boss = boss
		# @dept = dept
		# @vacation_days = vacation_days
	end

	def self.count    	# use self.count for class methods
		@@employee_count
	end

	def self.resign
		@@employee_count -= 1
	end

	def hate_boss
		"I hate my boss: #{@boss}"
	end


	def introduce
		puts "Hi, my name is #{@name}."
	end
end
