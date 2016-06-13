# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end


get '/students/locations' do
  @students = db.execute("SELECT * FROM students")
  @students_sf = db.execute("SELECT * FROM students WHERE campus = 'SF'")


# 3 ways to get data to server

# get request with query parameters
# route parameters with routes being variables
# post will send data in body of http request

# all three methods end up in params

