empty_array = []
p empty_array 



empty_array << "one"
empty_array << "two"
empty_array << "three"
empty_array << "four"
empty_array << "five"
p empty_array 


empty_array.delete_at(2)
p empty_array

empty_array.insert(2, "six")
p empty_array 

empty_array.delete("one") 
p empty_array

if empty_array.include?("six")
	puts "This array includes six!"
else
	puts "This array does not include six!"
end