def sum(list)
  list.each do |ele|
    sum = 0
    sum += ele
  end
  sum
end

list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerables: map, select, inject, reject, detect.


