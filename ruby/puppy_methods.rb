class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end



buddy = Puppy.new
buddy.fetch("stuffed animal")