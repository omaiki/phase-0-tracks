
puts "What is your hamster's name?"
name = gets.chomp

puts "Noise level of your hamster? (1-10)"
noise = gets.to_i

puts "Fur color?"
color = gets.chomp

puts "Is your hamster a good canditate for adoption?"
answer = gets.chomp

puts "Estimated age of your hamster?"
age = gets.chomp
if age.empty?
  age = nil
  p age
else
  p age.to_i
end

p "Hamster name: #{name}."
p "Hamster's age: #{age}."
p "Noise level is a #{noise}."
p "The hamster's fur color is a beautiful #{color}."
p "Good canditate for adoption: #{answer}"



