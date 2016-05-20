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
  	p "*rolls over*"
  end

  def dog_years(human_years)
  	dog_years = human_years / 6.5
  	# dog_years is a float, so round out normally
  	p dog_years.round
  end

  def jump_n_lick(name, gender)
  	p "*Jumps on #{name} and licks #{gender} right in the face"
  end

end


#initalizing instance (buddy) of Puppy class
buddy = Puppy.new
#calling fetch method on instance buddy
buddy.fetch("stuffed animal")
#calling speak method on instance buddy
buddy.speak(7)
#calling roll_over method on instance buddy
buddy.roll_over
#calling dog_years method
buddy.dog_years(50)
#calling jump_n_lick method
buddy.jump_n_lick("Oshoke", "him")

#any other instance of Puppy should be able to call these methods as
# long as it is initalized

snoopy = Puppy.new
snoopy.fetch("jerky")
snoopy.jump_n_lick("Flora", "her")