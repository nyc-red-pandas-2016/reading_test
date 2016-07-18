# Define a recursive function that returns true if a string is a palindrome and false otherwise.
def is_palindrome?(string)
	if string.length == 1
		true
	elsif string[0] != string[-1] 
		false
	else
	is_palindrome?(string[1..-2])
	end
end

p is_palindrome?('broken')
p is_palindrome?('level')




# Define a recursive function that flattens an array. The method should convert [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def the_flattener(array, final_array = [])
	array.each do |idx|
		if idx.class != Array 
			final_array << idx
		else
			the_flattener(idx, final_array)
		end
	end
	final_array
end

array = [[1,2], [3,[4, 5]], [6,7]]

p the_flattener(array)


