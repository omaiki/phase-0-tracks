puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
year = gets.to_i
puts "Our company cafeteria has world famous garlic break, should we order some for you during company lunch? (yes/no)"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? (yes/no)"
health = gets.chomp

if (age == 2016 - year) && ((garlic == "yes") || (health == "yes"))
  result = "Probably not a vampire."
  p result
elsif


end


