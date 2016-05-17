# Pseudocode:

# get user input
# convert user input to downcase

#puts "What is your name, agent?"
#name = gets.chomp 

# SWAP METHOD:
# downcases user input
# seperate first and last name and save as an array
# swap using shuffle method, use bang op to change existing array
# change shuffled name into a string and split back into an array to get
# all characters separated. 

def swap_split_name(name)
	name.downcase!
	split_name = name.split(' ')
	split_name.shuffle!
	split_name.join.split('')
end

p swap_split_name("Yo Momma")

	
#vowel and consonant transformation method
def next_letter(name)
name = name.tr("aeiou", "eioua")
name = name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
end

p next_letter("Yo Momma")

	

	
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





