=begin Pseudocode
- Encrypt: 
			#- Define method with name
			#- Remove first letter in string at index 0
			- Advance one letter forward from last index on string
			- end method



		- Decrypt: 
			- Define method with name
			- Shift string one letter back from last index using most negative index
			- Remove least negative (most positive) index (last letter in string)
			- end method 
=end 




def encrypt(string)
	index = 0 
	while index < string.length
		string[index] = string[index].next
	index += 1 
	end
	string = string.gsub("ab", "a")
end

def decrypt(string2)
	letters = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	i = 0 
	result = " "
	while index < string2.length
		if string2[index] == letters[i]
			result += letters[i - 1]
			index += 1
			i = 0 
		end
		i += 1
	end
	result
end


puts encrypt("abc")
puts encrypt("zed")
puts decrypt ("bcd")
puts decrypt ("afe")
puts decrypt(encrypt("swordfish"))

#Nested method works due to parenthesis making encrypt read first,
# output should be a normal word


#bcd
#afe
#abc
#zed 

