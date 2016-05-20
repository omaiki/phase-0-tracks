class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	integer.times do |integer|
  		puts "Woof!"
  	end
  	end
  		

  def roll_over
  end

  def dog_years
  end

end



buddy = Puppy.new
buddy.fetch("stuffed animal")

buddy.speak(7)