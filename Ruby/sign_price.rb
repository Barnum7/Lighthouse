=begin
Signs cost $15/sq foot
if sign's colors <= 2 than $10/color
if sign's colors > 2 than $15/color
tax = 15%

prompt user for 2 arguments color and size in square feet. 
Calculate value than multiply by 1.15 for tax
=end
def pricing(colors,size)
	if colors <= 2
		colors = colors * 10
	elsif colors > 2
		colors = colors * 15
	end
	size = size * 15
	price = ((size + colors) * 1.15).round(2)
	puts "The sign will cost $#{price}"
end

puts  "How many colors would you like?"
num_colors = gets.chomp.to_i
puts  "How large is the sign? (in square feet)"
sign_size = gets.chomp.to_i


pricing(num_colors,sign_size)