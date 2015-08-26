list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}

# Why is it returning nil instead of first element of the list 
#above
p Hash[*list.first]

=begin
This is not an array. It's a hash. It will return a key value pair	
=end

