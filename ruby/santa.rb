
class Santa

  attr_reader :name, :gender, :weight, :age, :ethnicity, :reindeer_ranking

  attr_accessor :name, :gender, :age

  def initialize(gender, ethnicity, weight, name)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer,", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    @weight = weight
    @name = name
    p "Initializing Santa instance ..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end


#### comment out #####
=begin
#getter methods
  def gender
    @gender
  end

  def weight
    @weight
  end

  def name
    @name
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def reindeer_ranking
    @reindeer_ranking
  end

=end

=begin
  #setter method (Release 2)
  def name=(new_name)
    @name = new_name
  end

  def gender=(new_gender)
    @gender = new_gender
  end
=end
####comment out ####

  #attribute changers (Release 2)
  def celebrate_birthday(age)
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
end

# Set an empty array and arrays with desired info
#santas = []


#Driver code for release 1-3
#Add attributes to 'santas' array  by iterating through the length (7) of the arrays with info
=begin
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], example_weights[i], name)
end


santa_example = Santa.new("male", "African-American", 200, "Saint Nicholas")
puts "#{santa_example.gender} santa weighs #{santa_example.weight} pounds."
p "#{santa_example.name}."

santa_example.name = "Saint Nick"
p "#{santa_example.name}."

santa_example.gender = "female"
p "Santa is #{santa_example.age} years old and an #{santa_example.ethnicity} #{santa_example.gender} now!"

p santa_example.reindeer_ranking

p santa_example.get_mad_at("Vixen")
=end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_weights = [0, 75, 100, 150, 200, 225, 250]
example_names = ["St. Nick", "Saint Nicholas", "Saint Nick", "St. Nicholas", "Saint Nicky", "St. Nicky", "Santa Claus"]

#Release 4: Build Many, Many Santas

i = 1
many_santas = []
70.times do

many_santas << Santa.new(example_genders.sample, example_ethnicities.sample, example_weights.sample, example_names.sample)

p "You are santa ##{i} at this Santacon!"

p "Santa ##{i} is #{many_santas[i-1].age} years old!"

p "Santa ##{i} weighs #{many_santas[i-1].weight} pounds!"

p "Santa ##{i} is '#{many_santas[i-1].ethnicity}' and is #{many_santas[i-1].gender}!"

p "Santa ##{i}'s name is #{many_santas[i-1].name}"


i += 1
end

