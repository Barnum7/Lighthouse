prompt = "What would you like the range to be?"
puts prompt 
a = gets.chomp.to_i  
b = gets.chomp.to_i

def fizzbuzz(x,y)
	(x..y).each do |i| 
 		if i % 5 == 0 && i % 3 == 0
    		puts "Fizzbuzz"
	  	elsif i % 5 == 0
	    	puts "Buzz"
	  	elsif i % 3 == 0
	    	puts "Fizz"
	  	else
	    	puts i
	  	end
  	end
end


fizzbuzz(a,b)