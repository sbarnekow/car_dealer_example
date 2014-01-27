class Car 
	attr_accessor :make, :model, :year, :color

	# to make these accessible ^ you can use attr_accessor as a shortcut instead of writing out the whole function
	# def make
	# 	@make
	# end

	def initialize make, model, year, color
		@make = make
		@model = model
		@year = year
		@color = color
	end


end
