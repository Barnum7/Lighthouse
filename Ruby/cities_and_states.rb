@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}
# #Task Uno
@states[:AL] = 'Alaska'
@states[:KY] = 'Kentucky'
# # puts states

# #Task Deux
@cities = {
	FL: ['Miami','Orlando','Tampa'],
	CA: ['San Franciso','Sacramento','Santa Barbara'],
	NY: ['NYC','Ithika','Albany']	
}

#Task Trois


print "What state would you like to search?"
state_code = gets.chomp.upcase
def describe_state(state_code)
	state_code = state_code.to_sym
	full_name = @states[state_code]
	cities_names = @cities[state_code]
	full_cities_number = cities_names.count
	cities_names_list = cities_names.join(".")
	return  "#{state_code} is for #{full_name} and it has #{full_cities_number}
	and those cities are #{cities_names_list}"
		
	end
puts describe_state(state_code)


# #Task Quatre

@taxes = {
	OR: 1,
	FL: 2,
	CA: 3,
	NY: 4,
	MI: 5
}


# Task Cinco
print "What state are you in?"
state_code = gets.chomp.upcase
print "How much does the item cost?"
cost = gets.chomp.to_i
def calculate_tax(state_code,cost)
	state_code = state_code.to_sym
	tax_rate = @taxes[state_code]
	tax_amount = cost * (0.01 * tax_rate)
	return tax_amount.to_f.round(2)
	puts "The tax on that item is #{tax_amount}"
end

puts calculate_tax(state_code,cost)

print "What city are you in?"
city_name = gets.chomp.capitalize
def find_state_for_city(city_name)
	@cities.each do |state_code, city| 
	if city.include?(city_name)
		return "This city is in #{state_code}"
	end
	end
 end

puts find_state_for_city(city_name)


