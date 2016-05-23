=begin
PSEUDOCODE FOR SOLO CHALLENGE: 3 attributes (2 data types) and three methods (one argument at least)

Class Player
defaults: "No set position", 0, "N/A", "No specialty", false

Attributes:
Height: (string)
Jersey #: (integer)
Shooting: (integer)
Dribbling: (integer)
Rebounding: (integer)

Methods:

  Training method (string, integer):
    IF attribute (shooting, dribbling, rebounding) integer is below 50,
      -  player will go into training for that skill
    ELSE
      - player will skip training and scrimmage instead

  Position method (string argument):
    IF attribute (height) is less than 6'7
    - player position will be guard
    ELSIF attribute (height) is less than 7'0
    - player position will be forward
    ELSE
    - player position will be center

  Request a trade method (string, integer):
    Change jersey # and team attributes to new_jersey # and new_team attributes


=end