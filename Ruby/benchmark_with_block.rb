=begin 
- The program needs to output how long it takes to reverse the long string
- I need to pull up the start time of when I started running the method and 
the end time when I run the method
- I then need to subtract start_time from end_time to get running time
=end
def benchmark(string)
	start_time = Time.now
	string.reverse
	end_time = Time.now
	running_time = end_time - start_time
	return running_time

end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 

running_time = benchmark(long_string)
 
puts "string.reverse took #{running_time} seconds to run"