# WEEK 5 ASSESSMENT


#working method
def calculate(n1, operator, n2)
n1.send(operator, n2)
end

# equation = gets.chomp
# array = equation.split(' ')
# array[0] = n1
# array[1] = operator
# array[2] = n2

#calculate assigned variables


##### => USER INTERFACE <= #####
# set up empty hash with key/value being equations/answers at the end
# take user input as string
# split on empty spaces into an array

# assign items at each index (0,1,2) into the two numbers and operators
    # I need to get the items of the array into variables so I can use the variables as my arguments for calculate method

# assign equation as string to a variable
# assign answer as string to variable as well
# add both variables into hash as key/value
all_calculations = {}
option = ''
until option == 'quit'
puts "Enter the equation you would like to calculate:"
equation = gets.chomp
array_of_equation = equation.split(' ')
p array_of_equation
x = array_of_equation[0].to_i
y = array_of_equation[1]
z = array_of_equation[2].to_i
solution = calculate(x,y,z)
p solution
all_calculations = {
  "#{equation}" => "#{solution}"
}
puts "Press any key to continue calculating or 'quit' if you are finished..."
option = gets.chomp

all_calculations.each do |equation, solution|
  puts "#{equation} is #{solution}!"
end
end
















# puts "Press any key and enter for calculation, type 'done' if finished."
# answer_init = gets.chomp
# until answer_init == "done"
# puts "Would you like to: add, subtract, multiply, or divide?
# Type 'done' if finished."
# answer = gets.chomp
# if answer == "add"
#   puts "Which numbers would you like to '#{answer}'?"
#   n1 = gets.chomp.to_i
#   n2 = gets.chomp.to_i
#   sum = calculate(n1, '+', n2)
#   p sum
# elsif answer == "subtract"
#   puts "Which numbers would you like to '#{answer}'?"
#   n1 = gets.chomp.to_i
#   n2 = gets.chomp.to_i
#   difference = calculate(n1, '-', n2)
#   p difference
# elsif answer == "multiply"
#   puts "Which numbers would you like to '#{answer}'?"
#   n1 = gets.chomp.to_i
#   n2 = gets.chomp.to_i
#   product = calculate(n1, '*', n2)
#   p product
# elsif answer == "divide"
#   puts "Which numbers would you like to '#{answer}'?"
#   n1 = gets.chomp.to_i
#   n2 = gets.chomp.to_i
#   quotient = calculate(n1, '/', n2)
#   p quotient
# elsif answer == "done"
#   exit
# else
#   puts "Please choose a valid operation, or type done if you're finished!"
# end
# end






#total_calculations = [
#n1, '#{operator}', n2]

#p total_calculations

# p calculate(4, '+', 5)
# p calculate(2, '*', 10)
# p calculate(8, '-', 1)
# p calculate(3, '/', 3)
