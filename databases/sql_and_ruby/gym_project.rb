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


#declaring a string for creating a table
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  exercise VARCHAR(255),
  progression VARCHAR(255)
)
SQL

# method to add workout info(exercise and progression) into database
def workout_info(db, exercise, progression)
  db.execute("INSERT INTO user (exercise, progression) VALUES (?, ?)", [exercise, progression])
end

#INTERFACE

# obtain workout and 1RM of user, do Calculation method for 1RM and next time workout
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

# add some if/else or case statements for gender/age down the line

#executing the string, creating a table
answer = ''
puts "Hi there! Welcome to the Progressive Overload Simulator. Type 'done' if you are finished."
until answer = 'done'
db.execute(create_table_cmd)
progressive_overload
end

#Added a user with stored info to (user) table through a method with input as arguments
    #db.execute("INSERT INTO user(name, weight, workout) VALUES ('Joseph', 170, 'squat')")
    # need the database as an argument
    # use ? placeholder for user input data instead of interpolation --- security

def create_user(db, name, weight)
  db.execute("INSERT INTO user (name, weight) VALUES (?, ?)", [name, weight])
end

#making names in Faker

# 3.times do
#   create_user(db, Faker::Name.name, 170,"benchpress")
# end

# user = db.execute("select * from user")
# user.each do |user|
#   puts "#{user['name']} weighs #{user['weight']} pounds. Workout of choice is: #{user['workout']}."
# end
