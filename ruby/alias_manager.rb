# Pseudocode:

# define method
# get user input
# convert user input to downcase

#puts "What is your name, agent?"
#name = gets.chomp 

def alias_method(name)
	name.downcase!
# seperate first and last name and save array as variable
	split_name = name.split(' ')
# than swap using shuffle method, use bang op to change existing array
	split_name.shuffle!
# change shuffled name into a string and split back into an array with characters
	split_name.join.split('')
# iterate through every character of word
end

p alias_method("Yo Momma")
	
	
		#code_name
	
# if character is a vowel
# character should go to next vowel
=begin case letter == /[aeoui]/
			when "a"
				"e" = "a"
			when "e"
				"i" = "e"
			when "i"
				"o" = "i"
			when "o"
				"u" = "o"
			when "u"
				"a" = "u"
		else
			puts error 
			
		end


# character should go to next consonant
			NEXT CONSONANT ALGORITHM
# join letters back together to form new string, store as code_name
	code_name = split_name.join('')
	end 
	p split_name_array
=end





# convert fake name to capitalized fake name 





