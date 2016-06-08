  # ask the user for their name and age
  # store user, age, EXERCISES into table
  # calculate next_time exercises for next gym session
  # print table with user, weight, exercises for next_time

  # At the moment, program assumes experienced weight-lifter with good form
  # early stages: calculation not very accurate and does NOT account for gender, age differences yet =/

#require gems
require 'sqlite3'
require 'faker'

# create a SQLite3 database
db = SQLite3::Database.new("gym_project.db")
db.results_as_hash = true




# method that obtains exercise choice and 1RM of user, does Calculation method for next workout based on desired intensity
def progressive_overload
  puts "Exercise choice?"
  exercise = gets.chomp
  puts "ONE REPETITION MAXIMUM for exercise/lift?"
  one_RM = gets.chomp.to_i
  puts "Intensity? (1-3; 3 being highest)"
  intensity = gets.chomp
    case intensity
    when "1"
      progression_calc = one_RM * 0.75
      progression = "Complete three sets, 10 repetitions of #{progression_calc.to_i.to_s} pounds at your next workout."
    when "2"
        progression_calc = one_RM * 0.80
        progression = "Complete three sets, 8 repetitions of #{progression_calc_to_i.to_s} pounds at your next workout."
    when "3"
        progression_calc = one_RM * 0.90
        progression = "Complete three sets, 4 repetitions of #{progression_calc.to_i.to_s} pounds at your next workout."
    end
    p exercise
    p progression
end
progressive_overload


#declaring a string for creating a table
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  weight INTEGER,
  exercise VARCHAR(255),
  progression VARCHAR(255)
)
SQL
# #executing the string, creating a table

db.execute(create_table_cmd)

# # method to add workout info(exercise and progression) into database
def workout_info(db, exercise, progression)
  db.execute("INSERT INTO user (exercise, progression) VALUES (?, ?)", [exercise, progression])
end

#method to create user on user table
def create_user(db, name, weight)
  db.execute("INSERT INTO user (name, weight) VALUES (?, ?)", [name, weight])
end






#INTERFACE

answer = ''
puts "Hi there! Welcome to the Progressive Overload Simulator...."
until answer == 'exit'
  puts "Enter your name: "
  name = gets.chomp
  puts "Enter your weight: "
  weight = gets.chomp
  #making a user
  create_user(db, name, weight)
puts "Press enter to continue with another user or ,'exit', if you are finished!"
answer = gets.chomp
end

#progressive_overload






# def create_user(db, name, weight)
#   db.execute("INSERT INTO user (name, weight) VALUES (?, ?)", [name, weight])
# end



# user = db.execute("select * from user")
# user.each do |user|
#   puts "#{user['name']} weighs #{user['weight']} pounds. Workout of choice is: #{user['workout']}."
# end


#take users name, weight, workout
# method that takes user 1RM max in a workout and calculates exercises for next workout
# put name, weight, workout, next_workout into a database to show multiple exercises for a user.