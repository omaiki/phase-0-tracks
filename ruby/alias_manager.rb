# Pseudocode:

# define method
# get user input
# convert user input to downcase

def alias_method
	puts "What is your name, agent?"
	name = gets.chomp.downcase
# seperate first and last name and save array as variable
	split_name = name.split(' ')
# than swap using shuffle method, use bang op to change existing array
	split_name.shuffle!
	p split_name
end



# split words into characters
	# if character is a vowel
		# character should go to next vowel
	# else
		# character should go to next consonant
	#end
# convert fake name to capitalized fake name 


p alias_method


