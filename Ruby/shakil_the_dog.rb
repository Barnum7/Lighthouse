=begin
If user input = woof, Shakil woofs 3 times
If you say "Shakil stop" he will be silent
If you "meow" he woofs 5 times
if your input includes "treat" he will be silent
if you say "go away" the program ends
=end
puts "What do you say?"
input = gets.chomp.downcase 

case input
when "woof"
	puts "WOOF " * 3
when "shakil stop"
	puts "Shakil is silent"
when "shakil stop!"
	puts "Shakil is silent"
when "meow"
	puts "woof " * 5
when /(treat)/
	puts "Shakil is silent"
else "go away"
	puts nil
end

