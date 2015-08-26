
test = "Lighthouse in the house"

def count_letters(string)
  letters = Hash.new {|char, index| char[index] = []}
  string.downcase.delete(" ").split("").each_with_index do |char, index|
  	letters[char] << index
  end
  letters
end

puts count_letters(test)