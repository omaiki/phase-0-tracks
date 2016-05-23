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

  def initialize(player_name, height, jersey)
    p "Creating #{player_name}..."
    p "#{height}"
    p "#{jersey}"
    @name = player_name
    @height = height
    @jersey = jersey
    @skill_choices = ["shooting", "dribbling", "passing", "rebounding", "defense"]
    @team = "Golden State Warriors"
    @skill = ""
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

  def position_choice(height)
  end
end

player_one = Player_bball.new("Oshoke", "5'10", 21)
player_one.assign
player_one.shoot_the_J

