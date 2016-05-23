=begin
PSEUDOCODE FOR SOLO CHALLENGE: 3 attributes (2 data types) and three methods (one argument at least)

Class Player-----------

defaults:

Attributes-------------

Name: (string)
Height: (string)
Jersey #: (integer)
Specialty Skills: (array of shooting, dribbling, passing, rebounding, defense)


Methods------------------

  initalize method(name, height, jersey_num)


  Assign a skill method (array)
   - assigns a skill to your player form the array skills

  Position method (string argument):
    IF attribute (height) is less than 6'7
    - player position will be guard
    ELSIF attribute (height) is less than 7'0
    - player position will be forward
    ELSE
    - player position will be center

  Shoot method(player_name)
    print out player shooting ball and making a basket...
    ----------------------------------------------------
=end

class Player_bball

  attr_reader :skill, :position
  attr_accessor :team, :jersey, :name

  def initialize(player_name, team, jersey)
    p "Creating #{player_name}..."
    p "#{team}"
    p "#{jersey}"
    @name = player_name
    @team = team
    @jersey = jersey
    @skill_choices = ["shooting", "dribbling", "passing", "rebounding", "defense"]
    @skill = ''
    @position = ''
  end

  def assign
    @skill = @skill_choices.sample(2)
   p @skill
  end

  def shoot_the_J
  if @skill.include? @skill_choices[0]
    p "#{@name} takes the shot, *swish* IT'S GOOD! "
  else
    p "#{@name} takes the shot, *miss* ouch, they're making mansions with those bricks!"
  end
  end

#assume correct user input for the height
  def position_choice(height_in_inches)
    if height_in_inches <= 79
      @position = "guard"
      p @position
    elsif (height_in_inches >= 79) && (height_in_inches <= 84)
      @position = "forward"
      p @position
    else
      @position = "center"
      p @position
    end
  end
end

=begin
####Sample Driver Code#####
player_one = Player_bball.new("Oshoke Maiki", "Warriors", 21)
player_one.assign
player_one.position_choice(75)
player_one.shoot_the_J
=end

user_players = []

puts "Time to create a new player!"
answer = ''
until answer == 'done'
 puts "Your player name?"
 name = gets.chomp
 puts "What team would you like to play for?"
 team = gets.chomp
 puts "What is your jersey number?"
 jersey = gets.chomp

user_players << Player_bball.new(name,team,jersey)
p "Press enter to continue creating a player. or type 'done' if you are finished."
answer = gets.chomp
end

user_players.each do |player|
  p "Nuuuumber #{player.jersey} of the #{player.team}, #{player.name}!!!!!!!"
end



