def progressive_overload
  puts "Workout choice?"
  workout = gets.chomp
  puts "ONE REPETITION MAXIMUM for workout?"
  one_RM = gets.chomp.to_i
  progression = one_RM * 0.75
  p progression
end

progressive_overload