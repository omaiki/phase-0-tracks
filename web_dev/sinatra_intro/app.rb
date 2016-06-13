
# require gems
require 'sinatra'

#building a server with Ruby that can do more than just handle HTTP requests, but handle persistent data... these websites with logical ability are called WEB APPLICATIONS

# Sinatra gives foundation to create a web server


# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# "I want to run the action under this route"
#whenever we get '/' path, send params line back

# write a basic GET route
# add a query parameter to add logic => set of key/value pairs that are added to a URL
# have to access parameters in params hash --> name = params[:name]
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "139 Raleigh Court. <br> Hercules, California 94547"
end

get '/great_job'
name = params[:name]
if name
  "Good job, #{name}!"
else
  "Good job!"
end
end

get '/:number_1/add/:number_2' do
  x = params[:num_1].to_i + params[:num_2].to_i
  "Sum is #{x}"
end