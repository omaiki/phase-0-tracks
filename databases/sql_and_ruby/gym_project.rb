#CREATING A PROGRAM THAT STORES ALL THE INFO OF REPS/SETS/WEIGHT OF GYM EXERCISES (4 things) AND DOES A SIMPLE CALCULATION to give  goal/progression for the next gym session.

# At the moment, program assumes experienced weight-lifter with good form

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
  workout VARCHAR(255)
)
SQL

#executing the string, creating a table
db.execute(create_table_cmd)

#Added a user to user table
#db.execute("INSERT INTO user(name, weight, workout) VALUES ('Joseph', 170, 'squat')")

# need the database as an argument
# use ? placeholder for user input data instead of interpolation --- security

def create_user(db, name, weight, workout)
  puts "Weight?"
  weight = gets.chomp
  puts "Workout choice?"
  workout = gets.chomp
  db.execute("INSERT INTO user (name, weight, workout) VALUES (?, ?, ?)", [name, weight, workout])s
end

#making names in Faker

3.times do
  create_user(db, Faker::Name.name, 170,"benchpress")
end



# user = db.execute("select * from user")
# user.each do |user|
#   puts "#{user['name']} weighs #{user['weight']} pounds. Workout of choice is: #{user['workout']}."
# end