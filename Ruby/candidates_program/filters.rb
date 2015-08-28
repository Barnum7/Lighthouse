# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# puts "Which ID?"
#   @user_input = gets.chomp.to_i

#  def find(ids)
#    @candidates.each do |candidate|
#      if candidate[:id] == ids
#        return candidate 
#      end
#    end
#  return nil
# end

# puts find(@user_input)


def experienced?(candidat)
   return candidat[:years_of_experience] >= 2
end

def github?(candidat)
   return candidat[:github_points] >= 100
end

def lang?(language)
puts "Language Ruby / Python?"
language.each do |lang|
  # if lang[:languages].include?("Ruby" || "Python")
  #   puts lang
  # end
end
end
lang?(@candidates)
# def lang_requirements(key)
# 	@lang_peeps = []
#    @candidates.each do |person| 
#         if person[:languages].include?(('Ruby') || ('Python'))
#         	@lang_peeps.push(person)
#         end
#         return @lang_peeps
#     end
# end

def applied?(candidat)
   return candidat[:date_applied] >= 15
end

def age?(candidat)
   return candidat[:age] > 18
end


def qualified_candidates()
 arr = []
 candidates.each do |person|
   if (experienced?(person) && github?(person) && applied?(person) && age?(person) && lang_requirements(person))
     arr.push(person)
   end
 end
 puts arr
end
qualified_candidates()