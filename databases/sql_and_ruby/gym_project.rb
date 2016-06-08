#CREATING A PROGRAM THAT STORES ALL THE INFO OF REPS/SETS/WEIGHT OF GYM EXERCISES (4 things) AND DOES A SIMPLE CALCULATION to give  goal/progression for the next gym session.

# At the moment, program assumes experienced weight-lifter with good form
# early stages: calculation not very accurate and does NOT account for gender differences yet =/

#3 x 10 @ 75% - Three sets of 10 reps at 75% of the 1RM
# 8/80%, 6/85%, 6/85%, 4/90% - Eight reps at 80%, two sets of six reps at 85%, and four reps at 90% of the 1RM

#require gems
require 'sqlite3'
require 'faker'

# create a SQLite3 database
db = SQLite3::Database.new("gym_project.db")
db.results_as_hash = true

#declaring a string
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  weight INT,
  workout VARCHAR(255),
  next_time VARCHAR(255),
)
SQL

#executing the string, creating a table
db.execute(create_table_cmd)

#Added a user with stored info to (user) table through a method with input as arguments
    #db.execute("INSERT INTO user(name, weight, workout) VALUES ('Joseph', 170, 'squat')")
    # need the database as an argument
    # use ? placeholder for user input data instead of interpolation --- security

def create_user(db, name, weight)
  puts "Weight?"
  weight = gets.chomp
  db.execute("INSERT INTO user (name, weight) VALUES (?, ?)", [name, weight])
end

def progressive_overload
  puts "Workout choice?"
  workout = gets.chomp
  puts "ONE REPETITION MAXIMUM for workout?"
  one_RM = gets.chomp.to_i
  progression = one_RM * 0.75
  p progression
end

progressive_overload(db, squat, 205)


#making names in Faker

# 3.times do
#   create_user(db, Faker::Name.name, 170,"benchpress")
# end



# user = db.execute("select * from user")
# user.each do |user|
#   puts "#{user['name']} weighs #{user['weight']} pounds. Workout of choice is: #{user['workout']}."
# end


# obtain name, weight, workout of user and add to table
# Calculation method for 1RM and next time workout

#create table method with all of user info
CREATE TABLE IF NOT EXISTS user(
  id INTEGER PRIMARY KEY,
  NAME VARCHAR(255),
  WEIGHT INTEGER,
  EXERCISE VARCHAR(255),
  NEXT_TIME VARCHAR(255)
  )

#add user info method (name weight, workout)
def create_user(db, weight, workout)

#print user info from table method

answer = ''
puts "Hi there! Welcome to the Progressive Overload Simulator. Type 'done' if you are finished."

until answer = 'done'
  db.execute()