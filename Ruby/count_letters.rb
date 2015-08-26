=begin
Tell us all the unique characters that exist in a string that is passed into the method.
Furthermore, the method should also report back 
how many instances of each letter were found in the string.
=end

test = "Lighthouse in the house"

def count_letters(string)
  letters = {}
  letters.default = 0
  string.downcase.delete(" ").split("").each do |char|
  	letters[char] += 1
  end
  letters
end

puts count_letters(test)

