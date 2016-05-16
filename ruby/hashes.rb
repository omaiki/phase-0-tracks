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
age = gets.chomp
player_info[:age] = "#{age}".to_i
p player_info

puts "What team is the player on?"
team = gets.chomp
player_info[:team] = "{team}"

puts "How many seasons has player been in the NBA"
seasons = gets.chomp
player_info[:seasons] = "#{seasons}".to_i

puts "Player height?"
height = gets.chomp 
player_info[:height] = "#{height}"

puts "(true/false) The player has won a championship"
champion = gets.chomp
player_info[:champion] = "#{champion}"

puts "Player Field Goal Percentage?"
fg_percent = gets.chomp
player_info[:fg_percent] = "#{fg_percent}".to_f
p player_info


