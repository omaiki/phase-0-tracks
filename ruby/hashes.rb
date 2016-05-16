#Pseudocode:

# Create Hash

# Get user input through puts statements and get.chomp, store into variable 
	# name -> string
	# age -> integer 
	# team -> string
	# seasons in NBA -> integer
	# height -> string  
	# Championship? -> boolean -> string
	# Field goal % -> float
	# Free throw % -> float
	# 3 point # -> float 



# Make new key in hash with user input for corresponding variable ("#{variable}")
player_info = {}

puts "Player name?"
name = gets.chomp
player_info[:name] = "#{name}"

puts "How old is the player?"
age = gets.chomp.to_i
player_info[:age] = "#{age}".to_i


puts "What team is the player on?"
team = gets.chomp
player_info[:team] = "#{team}"

puts "How many seasons has the player been in the NBA?"
seasons = gets.chomp.to_i
player_info[:seasons] = "#{seasons}".to_i

puts "Player's height?"
height = gets.chomp 
player_info[:height] = "#{height}"

puts "(true/false) The player has won a championship"
champion = gets.chomp
player_info[:champion] = "#{champion}"

puts "Player's Field Goal Percentage?"
fg_percent = gets.chomp.to_f
player_info[:fg_percent] = "#{fg_percent}".to_f


puts "Player's Free Throw Percentage?"
ft_percent = gets.chomp.to_f
player_info[:ft_percent] = "#{ft_percent}".to_f

puts "Player's Three-Point Percentage?"
threept_percent = gets.chomp.to_f
player_info[:threept_percent] = "#{threept_percent}".to_f


# print out hash with all user-input
p player_info

#Ask user if they want to make any edits with if/else statement 
	# if they answer none, print hash 
	# if they want to edit
		# get which key user wants to edit and save in variable, convert to 
		# symbol (variable names and symbol names are the same)
		# get what value user wants to edit to and save into a diff variable
		# use hash_name[:"#{variable}"] to edit hash 
		# print updated hash
	# exit program 

puts "Any edits to player's information?, type 'none' if finished"
	answer = gets.chomp
	if answer == "none"
		p player_info
	else
		puts "Which info would you like to update?"
		update_key = gets.chomp.to_sym
		puts "Edit your value for '#{update_key}':"
		update_value = gets.chomp
		player_info[:"#{update_key}"] = "#{update_value}"
		p player_info
	end

exit 
