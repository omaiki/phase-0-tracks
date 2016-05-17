# Pseudocode:

# SWAP METHOD:
# seperate first and last name and save as an array
# swap using shuffle method, use bang op to change existing array
# change shuffled name into a string and split back into an array to get
# all characters separated -> array. 

def swap_split_name(name)
	split_name = name.split(' ')
	split_name.shuffle!
	split_name.join(' ')
end

p swap_split_name("Yo Momma")

	
#vowel and consonant transformation method:
# takes user input and uses .tr method to substitute "eioua" for any "aeiou" characters
# same method for consonants in the alphabet 
def code_letter(name)
name = name.downcase.tr("aeiou", "eioua")
name = name.downcase.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
end

p code_letter("Felicia Torres")

# set up an array for all of the the different agents and their input
code_names = []

# set up a loop to ask agent for names continuously, until 'done'
option = ''
until option == "done"
# get user input and call methods to swap and scramble the name 
	puts "What is your real name, agent?"
	agent_name = gets.chomp
# swap, scrample -> array output, use join method to make a string of two words
# and capitalize
	alias_name = code_letter(swap_split_name(agent_name)).capitalize
# Give agent a new name! 
	puts "Agent, your new identity is: #{alias_name}"
# add alias_name to array code_names
	code_names << [agent_name, alias_name]
# ask user for more input if wanted, otherwise quit
	puts "Would you like to enter another name? Press any key and enter. 
	If Finished, type 'done'."
	option = gets.chomp 
	end


	

	
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





