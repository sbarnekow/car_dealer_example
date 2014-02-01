# prompt the user for car model, make, year

# array []
# hash {}

car = {:make => "Toyota", :model => "Corolla", :year => "2013", :color => "White"}
cartwo = {:make => "Toyota", :model => "Yaris", :year => "2011", :color => "White"}
carthree = {:make => "Toyota", :model => "Highlander", :year => "2010", :color => "Black"}
carfour = {:make => "Toyota", :model => "Yaris", :year => "2011", :color => "Black"}

car_db = [car, cartwo, carthree, carfour]

def get_model
	puts "What model Car are you looking for? You have three options. Corolla, Yaris, and Highlander"
	@model = gets.chomp.capitalize
end

def get_color
	puts "Would you like it to be white, or black?"
	@color = gets.chomp.capitalize
end

def match_model(car_db)
	@deadpool = []
	@option = []
	car_db.each do |i|
		if i[:model] == @model
			@option.push(i)
		elsif i[:model] != @model
			@deadpool.push(i) 
		else
			break
		end
	end
end

def match_color(option)
	@option.each do |i|
		if i[:color] == @color
			puts "Here's your car! #{i}"
		elsif i[:color] != @color
			@deadpool.push(i) 
		else
			break
		end
	end
end

get_color
get_model
match_model(car_db)
match_color(@option)