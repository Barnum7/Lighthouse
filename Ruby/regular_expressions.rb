# # Determine whether a string contains a SIN (Social Insurance Number).
# # A SIN is 9 digits and we are assuming that they must have dashes in them

# =begin
# Use regex to see if a string fits the pattern ###-###-###
# If true puts that value and use it in the next function
# =end
def has_sin?(string)
	  if string.match(/\b\d\d\d-\d\d\d-\d\d\d\b/) 
	  	return true
	  else 
	  	return false
	  end
end

puts "has_sin? returns true if it has what looks like a SIN"
puts has_sin?("please don't share this: 234-604-142") == true

puts "has_sin? returns false if it doesn't have a SIN"
puts has_sin?("please confirm your identity: XXX-XXX-142") == false
puts has_sin?("please don't share this: 234-6043-142") == false
puts has_sin?("please don't share this: 2342-604-142") == false
puts has_sin?("please don't share this: 234-604-1421") == false

# Return the Social Insurance Number from a string.
=begin 
If regex matches to a valid SIN. Return that valid SIN
=end
def grab_sin(string)
	    valid_sin = string.match(/\b\d\d\d-\d\d\d-\d\d\d\b/)
	    if valid_sin
	    	return valid_sin[0]
	    end
end


puts "grab_sin returns an SIN if the string has an SIN"
puts grab_sin("please don't share this: 234-604-142") == "234-604-142"

puts "grab_sin returns nil if it doesn't have a SIN"
puts grab_sin("please confirm your identity: XXX-XXX-142") == nil


# # Return all of the SINs from a string, not just one.
=begin
This is where it gets tricky. I can't just use match because that will only
return the first result.
PSYCH! Not tricky at all! I can just use .scan
=end

def grab_all_sins(string)
	valid_sin = string.scan(/\b\d\d\d-\d\d\d-\d\d\d\b/)
	if valid_sin
		return valid_sin
	end
end

puts "grab_all_sins returns all SINs if the string has any SINs"
puts grab_all_sins("234-604-142, 350-802-074, 013-630-876") == ["234-604-142", "350-802-074", "013-630-876"]

puts "grab_all_sins returns an empty Array if it doesn't have any SINs"
puts grab_all_sins("please confirm your identity: XXX-XXX-142") == []


# Obfuscate all of the Social Insurance numbers in a string. Example: XXX-XXX-4430.
=begin 
Time to substitute all of the valid sins with astericks. Now our regex needs
to store all matches AND substitute them with something else.
=end 
def hide_all_sins(string)
	valid_sin = string.scan(/\b\d\d\d-\d\d\d-\d\d\d\b/)
	if valid_sin.length > 0 
		valid_sin.each do |sin|
			sin.gsub!(/\b\d{3}(-)\d{3}/ , "XXX-XXX")
		end
		puts valid_sin
		return valid_sin.join(", ")
	else 
		return string
	end
end
		

puts "hide_all_sins obfuscates any SINs in the string"
puts hide_all_sins("234-601-142, 350-801-074, 013-601-876") == "XXX-XXX-142, XXX-XXX-074, XXX-XXX-876"

puts "hide_all_sins does not alter a string without SINs in it"
string = "please confirm your identity: XXX-XXX-142"
puts hide_all_sins(string) == string


# Ensure all of the Social Insurance numbers use dashes for delimiters.
# Example: 480.01.4430 and 480014430 would both be 480-01-4430.

=begin
I need to identify if a string is a possible SIN (in this case length = 9)
Then I need to insure that there is a hyphen seperating digits 3,4 and 6,7
=end
def format_sins(string)
	valid_sin = string.scan(/\b\d{9}\b/)
	string.insert(3, ".")
	string.insert(7, ".")
	string.gsub!("." , "-")
end

puts "format_sins finds and reformat any SINs in the string"
puts format_sins("234600142, 350.800.074, 013-600-876") == "234-600-142, 350-800-074, 013-600-876"

puts "format_sins does not alter a string without SINs in it"
string = "please confirm your identity: 4421422"
puts format_sins(string) == string

string = "please confirm your identity: 123abc445"
puts format_sins(string) == string