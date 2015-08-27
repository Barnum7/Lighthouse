def char_count(list)
  letters = {}
  letters.default = 0
  list.each do |word|
    word.split('').each { |letter| letters[letter] += 1 }
  end
  letters
end

# Why the long face(error)?  Did have letter values or default zero set
# 1. This should return count of each letter in the list

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?