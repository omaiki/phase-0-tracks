no_creativity = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4,
	"five" => 5,
	"six" => 6
}

def no_small_numbers(hash)
	hash.delete_if {|string, integer| integer <= 4}
		p hash
end

no_small_numbers(no_creativity)
