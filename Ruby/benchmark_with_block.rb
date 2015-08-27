require "benchmark"

=begin 
- The program needs to output how long it takes to reverse the long string
- I need to pull up the start time of when I started running the method and the end time when 
I run the method
- I then need end_time - start_time = running_time
=end

  # Your benchmarking code goes here.

 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = Benchmark.measure do
	long_string = long_string.reverse
	puts long_string
end
 
puts "string.reverse took #{running_time} seconds to run"