# WEEK 5 SOLO CHALLENGE
# Pseudocode:

# SWAP METHOD:
# seperate first and last name and save as an array
# swap using shuffle method, use bang op to change existing array
# change shuffled name into a string and split back into an array to get
# all characters separated -> array.

def swap_split_name(name)
  split_name = name.split(' ')
  split_name.shuffle!
  split_name.join(' ')
end

p swap_split_name("Yo Momma")


  #vowel and consonant transformation method:
  # takes user input and uses .tr method to substitute "eioua" for any "aeiou" characters
  # same method for consonants in the alphabet
def code_letter(name)
name = name.downcase.tr("aeiou", "eioua")
name = name.downcase.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
end

p code_letter("Felicia Torres")

  # set up an array for all of the the different agents and their input

def codename_method
code_names = []
  # set up a loop to ask agent for names continuously, until 'done'
option = ''
until option == "quit"
    # get user input and call methods to swap and scramble the name
  puts "What is your real name, agent?"
  agent_name = gets.chomp
    # call both methods to swap and scramble name -> string output, use split to convert
    #to an array for later iteration
  alias_name = code_letter(swap_split_name(agent_name)).split
    # use map method to get both words in the array and capitalize both, use bang op
    p alias_name
  alias_name.map do |x|
    x.capitalize!
  end
  alias_name = alias_name.join(' ')
    # Give agent a new name!
  puts "Agent, your new identity is: #{alias_name}"
    # add alias_name to array code_names
  code_names << [agent_name, alias_name]
    # ask user for more input if wanted, otherwise quit
  puts "Would you like to enter another name? Press any key and enter.
  If Finished, type 'quit'."
  option = gets.chomp
  end


    # Finally, iterate through the array, and print all user input before program exits.
code_names.each do |real, spy|
  puts "Agent's real name: #{real}."
  puts "Agent's code name: #{spy}."
end
end

codename_method
