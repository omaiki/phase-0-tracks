=begin
- Encrypt:
			- method with 1 argument
			- while loop with counter at 0 to go through a full length of string
			- use .next on string[counter]
			- increment counter



		- Decrypt:
			- method with 1 argument
=end




def encrypt(string)
	i = 0
	while i < string.length
		if string[i] == 'z'
			string[i] = 'a'
		else
		string[i] = string[i].next
	end
	i += 1
end
string
end

def decrypt(string)
	abc = "abcefghijklmnopqrstuvwxyz"
	index = 0
	i = 0
	result = ''

begin
def decrypt(string)
	letters = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	i = 0
	result = " "
	while index < string.length
		if string[index] == letters[i]
			result += letters[i - 1]
			index += 1
			i = 0
		end
		i += 1
	end
	result
end
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

#Pseducode interface
	# - Ask user whether whey want to decrypt or encrypt with variable and gets.chomp
	# - Store user input for password in another variable
	# - Conduct requested operation
	# - Print result
	# - Exit program

puts "Would you like to encrypt or decrypt your password?"
answer = gets.chomp

puts "Type your password"
password = gets.chomp

	if answer == "encrypt"
		puts "#{encrypt(password)} is your encrypted password!"
	elsif answer == "decrypt"
		puts "#{decrypt(password)} is your decrypted password!"
	else
		puts "There was an error with your request, please answer 'encrypt' or 'decrypt'."
	end

exit
