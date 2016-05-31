# Virus Predictor

# I worked on this challenge [by myself, with: ].

require_relative 'state_data'

# Virus Predictor

# I worked on this challenge with [Alison Mueller].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative takes code from another file with a relative path
#require is used to take code from libraries, gems

# require_relative 'state_data'

class VirusPredictor


# setting state origin, population and population density for each instance of a class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @months_to_spread = " "
    @number_of_deaths = " "
    @range = " "
  end


# running methods predicted_deaths and speed_of_spread using input
  def virus_effects
    predicted_deaths
    speed_of_spread
    print
  end

 # not accessible by outside objects outside of the class
private

 # taking input of density, population and state and performing a calculation based on population density to decide if conditional is true/false. Printing result with interpolation
  def predicted_deaths
    # predicted deaths is solely based on population density


    #we tried to implement a case statement here, but were running into an "undefined local variable or method" error.
    # case @range
    #   when @population_density [200..250]
    #     @number_of_deaths = (@population * 0.4).floor
    #   when @population_density [151..200]
    #     @number_of_deaths = (@population * 0.3).floor
    #   when @population_density [101..150]
    #     @number_of_deaths = (@population * 0.2).floor
    #   when @population_density [51..100]
    #     @number_of_deaths = (@population * 0.1).floor
    #   when @population_density [0..50]
    #   @number_of_deaths = (@population * 0.05).floor
    # end

    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

  end

 # taking population density and state as inputs and performing a speed calculation and printing result

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @months_to_spread = 0.0

    if @population_density >= 200
      @months_to_spread += 0.5
    elsif @population_density >= 150
      @months_to_spread += 1
    elsif @population_density >= 100
      @months_to_spread += 1.5
    elsif @population_density >= 50
      @months_to_spread += 2
    else
      @months_to_spread += 2.5
    end

  end

  def print
      puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across test state in #{@speed} months."
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# hash = {apples: 1, banans: 2}
# hash[:apples]

 STATE_DATA.each do |state_name, information|
     state = VirusPredictor.new(state_name,information[:population_density],information[:population])
   state.virus_effects
 end


#================================================================
# Reflection Section

# A difference in the hash syntax in the stata data file is that one hash uses symbols while another uses => syntax. The hash with symbols has two key-value pairs while the other has 50 key-value pairs for the 50 states.

#Require_relative takes code from another file with a relative path
#require is used to take code from libraries, gems

#.each with two parameters will go through key-value pairs in a hash.
#.map will turn hash key-value into an array

#Refactoring really helped me understand instance variables and the initialize method.. it allows you to use the same parameters throughout your instance methods, which is very efficient and clear

