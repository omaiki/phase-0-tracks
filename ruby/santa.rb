
class Santa

  def initialize(gender, ethnicity, weight, name)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer," "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @weight = weight
    @name = "Saint Nicholas"
    p "Initializing Santa instance ..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

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

  #setter method
  def name=(new_name)
    @name = new_name
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  #attribute changers
  def celebrate_birthday(age)
  end

  def get_mad_at(name)
  end


end


=begin
DRIVER CODE FOR RELEASE 0
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
=end


# Set an empty array and arrays with desired info
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_weights = [0, 75, 100, 150, 200, 225, 250]
name = "Saint Nicholas"

#Add attributes to santas array by iterating through the length (7) of the arrays

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i], example_weights[i], name)
end

puts "There are #{santas.length} Santas at this Santacon!"

santa_example = Santa.new("male", "N/A", 200, "Saint Nicholas")
puts "#{santa_example.gender} santa weighs #{santa_example.weight} pounds."
puts "#{santa_example.name}."

santa_example.name = "Saint Nick"
puts "#{santa_example.name}."

