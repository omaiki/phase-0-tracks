# def progressive_overload
#   puts "Workout choice?"
#   workout = gets.chomp
#   puts "ONE REPETITION MAXIMUM for workout?"
#   one_RM = gets.chomp.to_i
#   progression = one_RM * 0.75
#   p progression
# end

# progressive_overload

def progressive_overload
  puts "Enter your name:"
  name = gets.chomp
  puts "Enter your age:"
  age = gets.chomp
  puts "Exercise choice?"
  exercise = gets.chomp
  puts "ONE REPETITION MAXIMUM for exercise/lift?"
  one_RM = gets.chomp.to_i
  progression_calc = one_RM * 0.75
  progression = "Complete three sets, 10 repetitions of #{progression_calc.to_i.to_s} pounds at your next workout."
  p progression
end
progressive_overload


#Added a user with stored info to (user) table through a method with input as arguments
    #db.execute("INSERT INTO user(name, weight, workout) VALUES ('Joseph', 170, 'squat')")
    # need the database as an argument
    # use ? placeholder for user input data instead of interpolation --- security

