puts "How many users will be processed today?"
user_num = gets.to_i
while user_num > 0

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

  puts "List any allergies, type 'done' when finished or if no allergies."
  allergies = gets.chomp
  until (allergies == "done" || allergies == "sunshine")
      puts "List any allergies, type 'done' when finished or if no allergies."
      allergies = gets.chomp
  end

  if allergies == "sunshine"
      result = "Probably a vampire."
  elsif (age == 2016 - year) && ((garlic == "yes") || (health == "yes"))
  result = "Probably not a vampire."
  elsif
    (age != 2016 - year) && (( garlic == "no") || (health == "no"))
    result = "Probably a vampire."
  elsif
    ((age != 2016 - year) && (garlic == "no") && (health == "no"))
    result = "Almost certainly a vampire."
  elsif
    name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  else
    result = "Results inconclusive"
end
p result
user_num -= 1
end
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



