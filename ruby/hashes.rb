#Pseudocode:

# Create Hash

# Get user input through puts statements and get.chomp, store into variable 
	# name -> string
	# age -> integer 
	# seasons in NBA -> integer
	# height -> string  
	# team -> string
	# Championship? -> boolean
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

puts "Player height?"
height = gets.chomp 
player_info[:height] = "#{height}"
p player_info

