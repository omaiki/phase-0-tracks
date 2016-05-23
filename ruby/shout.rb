module Shout
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + " wooooohoooooooo!!! ARE YOU EXCITED?!"
  end
end

p Shout.yell_angrily("What theeee %^&$")
p Shout.yelling_happily("Whatsup dude?")
