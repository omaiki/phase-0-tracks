

=begin
module Shout
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + " wooooohoooooooo!!! ARE YOU EXCITED?!"
  end
end
=end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words = " wooooohoooooo!!! ARE YOU EXCITED?!"
  end
end

class Friend
  include Shout
end

class Enemy
  include Shout
end

new_friend = Friend.new
p new_friend.yelling_happily("Whatsup dude?")

new_enemy = Enemy.new
p new_enemy.yell_angrily("What theeee %^&$")

