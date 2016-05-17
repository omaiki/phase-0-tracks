# Pseudocode:

# SWAP METHOD:
# downcases user input
# seperate first and last name and save as an array
# swap using shuffle method, use bang op to change existing array
# change shuffled name into a string and split back into an array to get
# all characters separated -> array. 

def swap_split_name(name)
	name.downcase!
	split_name = name.split(' ')
	split_name.shuffle!
	split_name.join.split('')
end

p swap_split_name("Yo Momma")

	
#vowel and consonant transformation method:
# takes user input and uses .tr method to substitute "eioua" for any "aeiou" characters
# same method for consonants in the alphabet 
def code_letter(name)
name = name.tr("aeiou", "eioua")
name = name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
end

p code_letter("Felicia Torres")

# set up an array for all of the the different agents and their input
code_names = []
option = ''
until option == "quit"
	puts "What is your real name, agent?"
	agent_name = gets.chomp
	alias_name = code_letter(swap_split_name)

# add alias_name to array code_names
code_names << [agent_name, alias_name]

	

	
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





