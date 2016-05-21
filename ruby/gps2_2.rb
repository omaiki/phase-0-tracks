def create_list(str)
list = Hash.new(0)
items = str.split(" ")
  items.each do |item|
    list[item] += 1
  end
  # print the list to the console [can you use one of your other methods here?]
print_list(list)
list
end

def update_list(list)
  puts "Would you like to add or remove from the list? (1/0)"
  res = gets.to_i
  if res == 1
    puts "What would you like to add?"
    item = gets.chomp
    puts "How many?"
    amount = gets.to_i
    add(item, amount,list)
  else
    puts "What would you like to remove?"
    item = gets.chomp
    remove(item,list)
  end
print_list(list)

end

def add(item, amount = 1,list)
  list[item] += amount

end

def remove(item,list)
  list.delete(item)

end

def print_list(list)
  list.each_pair{|key,value| puts "#{key}: #{value}"}
end

list = create_list("Lemonade Tomatoes Onions Ice_Cream")
update_list(list)


test_list = {
  "Lemonade": 1,
  "Tomatoes": 3,
  "Onions": 1,
  "Ice_Cream": 4
}

add("Lemonade",1,test_list)
add("Tomatoes",2,test_list)
add("Ice_Cream",3,test_list)
# print_list(test_list)
# print_list(list)
list == test_list