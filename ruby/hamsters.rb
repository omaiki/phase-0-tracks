
puts "What is your hamster's name?"
name = gets.chomp

puts "Noise level of your hamster? (1-10)"
noise = gets.chomp

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
  p age
end



